.class public final Landroid/view/ViewRootImpl;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/HardwareRenderer$HardwareDrawCallbacks;
.implements Landroid/view/View$AttachInfo$Callbacks;
.implements Landroid/view/ViewParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$CursorColor;,
        Landroid/view/ViewRootImpl$CocktailGripDetector;,
        Landroid/view/ViewRootImpl$MotionEventMonitor;,
        Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;,
        Landroid/view/ViewRootImpl$HighContrastTextManager;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;,
        Landroid/view/ViewRootImpl$RunQueue;,
        Landroid/view/ViewRootImpl$CalledFromWrongThreadException;,
        Landroid/view/ViewRootImpl$W;,
        Landroid/view/ViewRootImpl$TakenSurfaceHolder;,
        Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;,
        Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;,
        Landroid/view/ViewRootImpl$WindowInputEventReceiver;,
        Landroid/view/ViewRootImpl$TraversalRunnable;,
        Landroid/view/ViewRootImpl$QueuedInputEvent;,
        Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;,
        Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;,
        Landroid/view/ViewRootImpl$SyntheticJoystickHandler;,
        Landroid/view/ViewRootImpl$TrackballAxis;,
        Landroid/view/ViewRootImpl$SyntheticTrackballHandler;,
        Landroid/view/ViewRootImpl$SyntheticInputStage;,
        Landroid/view/ViewRootImpl$ViewPostImeInputStage;,
        Landroid/view/ViewRootImpl$NativePostImeInputStage;,
        Landroid/view/ViewRootImpl$EarlyPostImeInputStage;,
        Landroid/view/ViewRootImpl$ImeInputStage;,
        Landroid/view/ViewRootImpl$ViewPreImeInputStage;,
        Landroid/view/ViewRootImpl$NativePreImeInputStage;,
        Landroid/view/ViewRootImpl$AsyncInputStage;,
        Landroid/view/ViewRootImpl$InputStage;,
        Landroid/view/ViewRootImpl$ViewRootHandler;,
        Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_DIALOG:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_INPUT_STAGES:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

.field private static final DEBUG_TRACKBALL:Z = false

.field private static final DYNAMIC_COLOR_SCALING_ENABLED:Z = true

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_QUEUED_INPUT_EVENT_POOL_SIZE:I = 0xa

.field static final MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final MSG_ATTACHED_DISPLAY_CHANGED:I = 0x3e8

.field private static final MSG_CHECK_FOCUS:I = 0xd

.field private static final MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST:I = 0x15

.field private static final MSG_CLOSE_SYSTEM_DIALOGS:I = 0xe

.field private static final MSG_DIE:I = 0x3

.field private static final MSG_DISPATCH_APP_VISIBILITY:I = 0x8

.field private static final MSG_DISPATCH_COVER_STATE:I = 0x1d

.field private static final MSG_DISPATCH_DRAG_EVENT:I = 0xf

.field private static final MSG_DISPATCH_DRAG_LOCATION_EVENT:I = 0x10

.field private static final MSG_DISPATCH_GET_NEW_SURFACE:I = 0x9

.field private static final MSG_DISPATCH_INPUT_EVENT:I = 0x7

.field private static final MSG_DISPATCH_KEY_FROM_IME:I = 0xb

.field private static final MSG_DISPATCH_MULTI_WINDOW_STATE_CHANGED:I = 0x1f

.field private static final MSG_DISPATCH_SURFACE_DESTROY_DEFERRED:I = 0x1e

.field private static final MSG_DISPATCH_SYSTEM_UI_VISIBILITY:I = 0x11

.field private static final MSG_DISPATCH_WINDOW_ANIMATION_STARTED:I = 0x1b

.field private static final MSG_DISPATCH_WINDOW_ANIMATION_STOPPED:I = 0x1a

.field private static final MSG_DISPATCH_WINDOW_SHOWN:I = 0x19

.field private static final MSG_FINISH_INPUT_CONNECTION:I = 0xc

.field private static final MSG_INVALIDATE:I = 0x1

.field private static final MSG_INVALIDATE_RECT:I = 0x2

.field private static final MSG_INVALIDATE_WORLD:I = 0x16

.field private static final MSG_PROCESS_INPUT_EVENTS:I = 0x13

.field private static final MSG_RESIZED:I = 0x4

.field private static final MSG_RESIZED_REPORT:I = 0x5

.field private static final MSG_SYNTHESIZE_INPUT_EVENT:I = 0x18

.field private static final MSG_UPDATE_CONFIGURATION:I = 0x12

.field private static final MSG_WINDOW_FOCUS_CHANGED:I = 0x6

.field private static final MSG_WINDOW_MOVED:I = 0x17

.field private static final MULTI_WINDOW_DRAG_AND_DROP_IMAGE:Ljava/lang/String; = "Multiwindow drag and drop image"

.field private static final MULTI_WINDOW_DRAG_AND_DROP_TEXT:Ljava/lang/String; = "Multiwindow drag and drop text"

.field public static final PROPERTY_EMULATOR_WIN_OUTSET_BOTTOM_PX:Ljava/lang/String; = "ro.emu.win_outset_bottom_px"

.field private static final PROPERTY_PROFILE_RENDERING:Ljava/lang/String; = "viewroot.profile_rendering"

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"

.field private static final bDSSEnabled:Z = true

.field static final bFactoryBinary:Z

.field static final mResizeInterpolator:Landroid/view/animation/Interpolator;

.field private static mUseGestureDetectorTouchEventEx:Z

.field static sBufferCount:I

.field static final sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field static sDTSFactor:D

.field static sDcsFormat:I

.field static sDssFactor:D

.field static sFirstDrawComplete:Z

.field static final sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static sIsDcsEnabledApp:Z

.field public static final sIsNovelModel:Z

.field static sRendererDemoted:Z

.field static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/ViewRootImpl$RunQueue;",
            ">;"
        }
    .end annotation
.end field

.field static sSVBufferCount:I


# instance fields
.field mAccessibilityFocusedHost:Landroid/view/View;

.field mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

.field mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

.field mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

.field final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAdded:Z

.field mAddedTouchMode:Z

.field mAppVisible:Z

.field mApplyInsetsRequested:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAudioManager:Landroid/media/AudioManager;

.field final mBasePackageName:Ljava/lang/String;

.field mBlockResizeBuffer:Z

.field mChoreographer:Landroid/view/Choreographer;

.field mClientWindowLayoutFlags:I

.field final mCocktailBar:Landroid/graphics/Rect;

.field private mCocktailGripDetector:Landroid/view/ViewRootImpl$CocktailGripDetector;

.field final mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

.field mConsumeBatchedInputImmediatelyScheduled:Z

.field mConsumeBatchedInputScheduled:Z

.field final mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

.field private mContentResizeAnimator:Landroid/animation/ValueAnimator;

.field final mContentResolver:Landroid/content/ContentResolver;

.field final mContext:Landroid/content/Context;

.field mCurScrollY:I

.field mCurrentDragView:Landroid/view/View;

.field private mCurrentWritingBuddyView:Landroid/view/View;

.field private final mDensity:I

.field mDirty:Landroid/graphics/Rect;

.field final mDispatchContentInsets:Landroid/graphics/Rect;

.field final mDispatchStableInsets:Landroid/graphics/Rect;

.field mDisplay:Landroid/view/Display;

.field final mDisplayAdjustments:Landroid/view/DisplayAdjustments;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mDragDescription:Landroid/content/ClipDescription;

.field final mDragPoint:Landroid/graphics/PointF;

.field mDrawDuringWindowsAnimating:Z

.field mDrawingAllowed:Z

.field private mDssScale:F

.field mFallbackEventHandler:Landroid/view/FallbackEventHandler;

.field mFirst:Z

.field mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

.field mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private mFocusDragStartWin:Z

.field private mForceDraw:Z

.field private mFpsNumFrames:I

.field private mFpsPrevTime:J

.field private mFpsStartTime:J

.field mFullRedrawNeeded:Z

.field final mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

.field mHandlingLayoutInLayoutRequest:Z

.field mHardwareXOffset:I

.field mHardwareYOffset:I

.field mHasHadWindowFocus:Z

.field mHeight:I

.field mHideInterpolator:Landroid/view/animation/Interpolator;

.field mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

.field private mInLayout:Z

.field mInputChannel:Landroid/view/InputChannel;

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

.field mInputQueue:Landroid/view/InputQueue;

.field mInputQueueCallback:Landroid/view/InputQueue$Callback;

.field final mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

.field mIsAnimating:Z

.field mIsCreating:Z

.field mIsDrawing:Z

.field mIsInTraversal:Z

.field mIsThisWindowDontNeedSurfaceBuffer:Z

.field final mLastConfiguration:Landroid/content/res/Configuration;

.field final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mLastInCompatMode:Z

.field mLastMeasuredMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field mLastOverscanRequested:Z

.field mLastPerformedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field mLastScrolledFocus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mLastSystemUiVisibility:I

.field final mLastTouchPoint:Landroid/graphics/PointF;

.field mLastWasImTarget:Z

.field private mLastWindowInsets:Landroid/view/WindowInsets;

.field mLayoutRequested:Z

.field mLayoutRequesters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field volatile mLocalDragState:Ljava/lang/Object;

.field final mLocation:Landroid/view/WindowLeaked;

.field private mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

.field mMultiWindowBoarderRect:Landroid/graphics/Rect;

.field mNewScaleFactorNeeded:Z

.field mNewSurfaceNeeded:Z

.field private final mNoncompatDensity:I

.field mOrientationChanged:Z

.field mOrigWindowType:I

.field mPausedForTransition:Z

.field final mPendingConfiguration:Landroid/content/res/Configuration;

.field final mPendingContentInsets:Landroid/graphics/Rect;

.field mPendingInputEventCount:I

.field mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

.field mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field final mPendingOutsets:Landroid/graphics/Rect;

.field final mPendingOverscanInsets:Landroid/graphics/Rect;

.field final mPendingStableInsets:Landroid/graphics/Rect;

.field private mPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/LayoutTransition;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingVisibleInsets:Landroid/graphics/Rect;

.field private mPreContentInsets:Landroid/graphics/Rect;

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field mProcessInputEventsScheduled:Z

.field private mProfile:Z

.field private mProfileRendering:Z

.field private mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private mQueuedInputEventPoolSize:I

.field private mRemainingFrameCount:I

.field private mRemoved:Z

.field private mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

.field private mRenderProfilingEnabled:Z

.field mReportNextDraw:Z

.field mReportedViewVisibility:I

.field mResizeAlpha:I

.field private mResizeAnimating:Z

.field private mResizeBooster:Landroid/os/DVFSHelper;

.field mResizeBuffer:Landroid/view/HardwareLayer;

.field mResizeBufferDuration:I

.field mResizeBufferStartTime:J

.field final mResizePaint:Landroid/graphics/Paint;

.field mScaleFactor:Landroid/graphics/PointF;

.field mScrollMayChange:Z

.field mScrollY:I

.field mScroller:Landroid/widget/Scroller;

.field mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

.field mSeq:I

.field mShowInterpolator:Landroid/view/animation/Interpolator;

.field private mSkipPanScrollEnterAnimation:Z

.field private mSkipPanScrollExitAnimation:Z

.field mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

.field mSoftInputMode:I

.field mStopped:Z

.field final mSurface:Landroid/view/Surface;

.field mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

.field final mTargetSdkVersion:I

.field mTempHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mTempRect:Landroid/graphics/Rect;

.field final mThread:Ljava/lang/Thread;

.field final mTmpLocation:[I

.field mTmpMotionEventMatrix:Landroid/graphics/Matrix;

.field final mTmpValue:Landroid/util/TypedValue;

.field private mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final mTransparentRegion:Landroid/graphics/Region;

.field mTraversalBarrier:I

.field final mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

.field mTraversalScheduled:Z

.field mTwDrawDuringWindowsAnimating:Z

.field private mTwToolBoxTracking:Z

.field mUnbufferedInputDispatch:Z

.field public mUseFloatingToolBox:Z

.field mView:Landroid/view/View;

.field final mViewConfiguration:Landroid/view/ViewConfiguration;

.field private mViewLayoutDirectionInitial:I

.field mViewVisibility:I

.field final mVisRect:Landroid/graphics/Rect;

.field mWidth:I

.field mWillDrawSoon:Z

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/ViewRootImpl$W;

.field final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field mWindowAttributesChanged:Z

.field mWindowAttributesChangesFlag:I

.field final mWindowSession:Landroid/view/IWindowSession;

.field mWindowsAnimating:Z

.field mWindowsExitAnimating:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 199
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_57

    move v0, v1

    :goto_c
    sput-boolean v0, SAFE_DEBUG:Z

    .line 236
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, sRunQueues:Ljava/lang/ThreadLocal;

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, sFirstDrawHandlers:Ljava/util/ArrayList;

    .line 239
    sput-boolean v1, sFirstDrawComplete:Z

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, sConfigCallbacks:Ljava/util/ArrayList;

    .line 276
    sput-boolean v1, sRendererDemoted:Z

    .line 281
    sput v3, sBufferCount:I

    .line 282
    sput v3, sSVBufferCount:I

    .line 374
    sput v3, sDcsFormat:I

    .line 375
    sput-boolean v1, sIsDcsEnabledApp:Z

    .line 377
    sput-wide v4, sDssFactor:D

    .line 379
    sput-wide v4, sDTSFactor:D

    .line 450
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, mResizeInterpolator:Landroid/view/animation/Interpolator;

    .line 507
    const-string/jumbo v0, "ro.factory.factory_binary"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "factory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, bFactoryBinary:Z

    .line 513
    sput-boolean v2, mUseGestureDetectorTouchEventEx:Z

    .line 550
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v1, "novel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, sIsNovelModel:Z

    return-void

    :cond_57
    move v0, v2

    .line 199
    goto :goto_c
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput v2, p0, mDssScale:F

    .line 250
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, mTmpLocation:[I

    .line 252
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, mTmpValue:Landroid/util/TypedValue;

    .line 258
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 288
    iput-boolean v6, p0, mAppVisible:Z

    .line 289
    iput v5, p0, mOrigWindowType:I

    .line 293
    iput-boolean v4, p0, mStopped:Z

    .line 296
    iput-boolean v4, p0, mPausedForTransition:Z

    .line 298
    iput-boolean v4, p0, mLastInCompatMode:Z

    .line 344
    iput-boolean v4, p0, mTwDrawDuringWindowsAnimating:Z

    .line 358
    iput-boolean v4, p0, mOrientationChanged:Z

    .line 359
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, mScaleFactor:Landroid/graphics/PointF;

    .line 360
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mMultiWindowBoarderRect:Landroid/graphics/Rect;

    .line 361
    iput-boolean v4, p0, mNewScaleFactorNeeded:Z

    .line 362
    new-instance v0, Landroid/graphics/Matrix;

    sget-object v2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-direct {v0, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, mTmpMotionEventMatrix:Landroid/graphics/Matrix;

    .line 364
    iput-object v1, p0, mLastMeasuredMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 365
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    iput-object v0, p0, mLastPerformedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 367
    iput-boolean v4, p0, mFocusDragStartWin:Z

    .line 383
    iput-object v1, p0, mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    .line 400
    const-string/jumbo v0, "pq"

    iput-object v0, p0, mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    .line 406
    iput-boolean v4, p0, mWindowAttributesChanged:Z

    .line 407
    iput v4, p0, mWindowAttributesChangesFlag:I

    .line 411
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, mSurface:Landroid/view/Surface;

    .line 421
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mPendingOverscanInsets:Landroid/graphics/Rect;

    .line 422
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 423
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mPendingStableInsets:Landroid/graphics/Rect;

    .line 424
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mPendingContentInsets:Landroid/graphics/Rect;

    .line 425
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mPendingOutsets:Landroid/graphics/Rect;

    .line 426
    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v0, p0, mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 429
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mDispatchContentInsets:Landroid/graphics/Rect;

    .line 430
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mDispatchStableInsets:Landroid/graphics/Rect;

    .line 434
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, mLastConfiguration:Landroid/content/res/Configuration;

    .line 435
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, mPendingConfiguration:Landroid/content/res/Configuration;

    .line 459
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, mDragPoint:Landroid/graphics/PointF;

    .line 460
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, mLastTouchPoint:Landroid/graphics/PointF;

    .line 470
    iput-boolean v4, p0, mUseFloatingToolBox:Z

    .line 471
    iput-object v1, p0, mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    .line 475
    const-wide/16 v2, -0x1

    iput-wide v2, p0, mFpsStartTime:J

    .line 476
    const-wide/16 v2, -0x1

    iput-wide v2, p0, mFpsPrevTime:J

    .line 498
    iput-boolean v4, p0, mInLayout:Z

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mLayoutRequesters:Ljava/util/ArrayList;

    .line 500
    iput-boolean v4, p0, mHandlingLayoutInLayoutRequest:Z

    .line 517
    iput-object v1, p0, mCocktailGripDetector:Landroid/view/ViewRootImpl$CocktailGripDetector;

    .line 526
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mPreContentInsets:Landroid/graphics/Rect;

    .line 527
    iput-boolean v4, p0, mResizeAnimating:Z

    .line 528
    iput-object v1, p0, mResizeBooster:Landroid/os/DVFSHelper;

    .line 537
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_241

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v4}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_e5
    iput-object v0, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 639
    iput-boolean v4, p0, mProfile:Z

    .line 1158
    new-instance v0, Landroid/view/ViewRootImpl$1;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$1;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 2838
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, mResizePaint:Landroid/graphics/Paint;

    .line 3583
    iput-boolean v4, p0, mSkipPanScrollEnterAnimation:Z

    .line 3584
    iput-boolean v4, p0, mSkipPanScrollExitAnimation:Z

    .line 4340
    iput-boolean v4, p0, mTwToolBoxTracking:Z

    .line 4375
    new-instance v0, Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ViewRootHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 7406
    new-instance v0, Landroid/view/ViewRootImpl$TraversalRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$TraversalRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    .line 7452
    new-instance v0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    .line 7462
    new-instance v0, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    .line 7548
    new-instance v0, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    .line 554
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 555
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, mWindowSession:Landroid/view/IWindowSession;

    .line 556
    iput-object p2, p0, mDisplay:Landroid/view/Display;

    .line 557
    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mBasePackageName:Ljava/lang/String;

    .line 559
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    .line 561
    invoke-virtual {p2}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    iput-object v0, p0, mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    .line 563
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, mThread:Ljava/lang/Thread;

    .line 564
    new-instance v0, Landroid/view/WindowLeaked;

    invoke-direct {v0, v1}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mLocation:Landroid/view/WindowLeaked;

    .line 565
    iget-object v0, p0, mLocation:Landroid/view/WindowLeaked;

    invoke-virtual {v0}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 566
    iput v5, p0, mWidth:I

    .line 567
    iput v5, p0, mHeight:I

    .line 568
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mDirty:Landroid/graphics/Rect;

    .line 569
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTempRect:Landroid/graphics/Rect;

    .line 570
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mVisRect:Landroid/graphics/Rect;

    .line 571
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mWinFrame:Landroid/graphics/Rect;

    .line 572
    new-instance v0, Landroid/view/ViewRootImpl$W;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$W;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, mWindow:Landroid/view/ViewRootImpl$W;

    .line 573
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, mTargetSdkVersion:I

    .line 574
    const/16 v0, 0x8

    iput v0, p0, mViewVisibility:I

    .line 576
    const/16 v0, 0x8

    iput v0, p0, mReportedViewVisibility:I

    .line 578
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, mTransparentRegion:Landroid/graphics/Region;

    .line 579
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, mPreviousTransparentRegion:Landroid/graphics/Region;

    .line 580
    iput-boolean v6, p0, mFirst:Z

    .line 581
    iput-boolean v4, p0, mAdded:Z

    .line 582
    new-instance v0, Landroid/view/View$AttachInfo;

    iget-object v1, p0, mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v5, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object v3, p2

    move-object v4, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V

    iput-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 583
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 584
    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    .line 586
    iget-object v0, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 588
    new-instance v0, Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$HighContrastTextManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    .line 589
    iget-object v0, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z

    .line 591
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 592
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, mDensity:I

    .line 593
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v0, p0, mNoncompatDensity:I

    .line 594
    new-instance v0, Lcom/android/internal/policy/PhoneFallbackEventHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    .line 595
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, mChoreographer:Landroid/view/Choreographer;

    .line 596
    iget-object v0, p0, mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->getRootContext(Landroid/content/Context;)V

    .line 597
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 598
    invoke-virtual {p0}, loadSystemProperties()V

    .line 599
    iget-object v0, p0, mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 602
    new-instance v0, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    invoke-direct {v0, p0, p1}, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;-><init>(Landroid/view/ViewRootImpl;Landroid/content/Context;)V

    iput-object v0, p0, mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    .line 606
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 607
    .local v7, "pm":Landroid/content/pm/PackageManager;
    if-eqz v7, :cond_232

    .line 608
    const-string v0, "com.sec.feature.spen_usp"

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v8

    .line 609
    .local v8, "spenUspLevel":I
    const/4 v0, 0x3

    if-lt v8, v0, :cond_232

    .line 610
    new-instance v0, Landroid/view/ViewRootImpl$MotionEventMonitor;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$MotionEventMonitor;-><init>()V

    iput-object v0, p0, mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

    .line 615
    .end local v8    # "spenUspLevel":I
    :cond_232
    sget-boolean v0, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v0, :cond_239

    .line 616
    invoke-virtual {p0}, twUpdateToolBox()V

    .line 620
    :cond_239
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mCocktailBar:Landroid/graphics/Rect;

    .line 622
    return-void

    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_241
    move-object v0, v1

    .line 537
    goto/16 :goto_e5
.end method

.method static synthetic access$000(Landroid/view/ViewRootImpl;)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 194
    iget-boolean v0, p0, mRenderProfilingEnabled:Z

    return v0
.end method

.method static synthetic access$100(Landroid/view/ViewRootImpl;)Landroid/view/Choreographer$FrameCallback;
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 194
    iget-object v0, p0, mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/view/ViewRootImpl;Z)Z
    .registers 3
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 194
    invoke-direct {p0, p1}, ensureTouchModeLocally(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/view/ViewRootImpl;)Lcom/samsung/android/toolbox/TwToolBoxManager;
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 194
    iget-object v0, p0, mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/view/ViewRootImpl;Lcom/samsung/android/toolbox/TwToolBoxManager;)Lcom/samsung/android/toolbox/TwToolBoxManager;
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Lcom/samsung/android/toolbox/TwToolBoxManager;

    .prologue
    .line 194
    iput-object p1, p0, mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/view/ViewRootImpl;)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 194
    invoke-direct {p0}, isInLocalFocusMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/view/ViewRootImpl;)V
    .registers 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 194
    invoke-direct {p0}, sendUserActionEvent()V

    return-void
.end method

.method static synthetic access$1400(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/DragEvent;

    .prologue
    .line 194
    invoke-direct {p0, p1}, handleDragEvent(Landroid/view/DragEvent;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/view/ViewRootImpl;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 194
    invoke-direct {p0, p1}, handleDispatchCoverStateChanged(Z)V

    return-void
.end method

.method static synthetic access$1600(Landroid/view/ViewRootImpl;)V
    .registers 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 194
    invoke-direct {p0}, handleDispatchSurfaceDestroyDeferred()V

    return-void
.end method

.method static synthetic access$1700(Landroid/view/ViewRootImpl;I)V
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # I

    .prologue
    .line 194
    invoke-direct {p0, p1}, handleDispatchMultiWindowStateChanged(I)V

    return-void
.end method

.method static synthetic access$1800(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 194
    invoke-direct {p0, p1}, finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z
    .registers 3
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .prologue
    .line 194
    invoke-direct {p0, p1}, checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 194
    sget-boolean v0, SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$MotionEventMonitor;
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 194
    iget-object v0, p0, mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

    return-object v0
.end method

.method static synthetic access$2902(Landroid/view/ViewRootImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, mProfileRendering:Z

    return p1
.end method

.method static synthetic access$300(Landroid/view/ViewRootImpl;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 194
    iget-object v0, p0, mContentResizeAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/view/ViewRootImpl;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 194
    invoke-direct {p0, p1}, dispatchCoverStateChanged(Z)V

    return-void
.end method

.method static synthetic access$3400(Landroid/view/ViewRootImpl;)V
    .registers 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 194
    invoke-direct {p0}, dispatchSurfaceDestroyDeferred()V

    return-void
.end method

.method static synthetic access$3500(Landroid/view/ViewRootImpl;I)V
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # I

    .prologue
    .line 194
    invoke-direct {p0, p1}, dispatchMultiWindowStateChanged(I)V

    return-void
.end method

.method static synthetic access$3700(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .registers 4
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 194
    invoke-direct {p0, p1, p2}, getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3802(Landroid/view/ViewRootImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, mResizeAnimating:Z

    return p1
.end method

.method static synthetic access$400(Landroid/view/ViewRootImpl;)V
    .registers 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 194
    invoke-direct {p0}, initContentResizeAnimator()V

    return-void
.end method

.method static synthetic access$500(Landroid/view/ViewRootImpl;)V
    .registers 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 194
    invoke-direct {p0}, acquireContentResizeAnimationBooster()V

    return-void
.end method

.method static synthetic access$600(Landroid/view/ViewRootImpl;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 194
    iget-object v0, p0, mPreContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Landroid/view/View;)V
    .registers 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 194
    invoke-static {p0}, forceLayout(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Landroid/view/ViewRootImpl;)V
    .registers 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 194
    invoke-direct {p0}, startContentResizeAnimation()V

    return-void
.end method

.method static synthetic access$900(Landroid/view/ViewRootImpl;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 194
    invoke-direct {p0, p1}, profileRendering(Z)V

    return-void
.end method

.method private acquireContentResizeAnimationBooster()V
    .registers 4

    .prologue
    .line 9209
    iget-object v0, p0, mResizeBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_14

    .line 9210
    iget-object v0, p0, mResizeBooster:Landroid/os/DVFSHelper;

    sget v1, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 9211
    iget-object v0, p0, mResizeBooster:Landroid/os/DVFSHelper;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 9213
    :cond_14
    return-void
.end method

.method public static addConfigCallback(Landroid/content/ComponentCallbacks;)V
    .registers 3
    .param p0, "callback"    # Landroid/content/ComponentCallbacks;

    .prologue
    .line 633
    sget-object v1, sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 634
    :try_start_3
    sget-object v0, sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    monitor-exit v1

    .line 636
    return-void

    .line 635
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static addFirstDrawHandler(Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 625
    sget-object v1, sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 626
    :try_start_3
    sget-boolean v0, sFirstDrawComplete:Z

    if-nez v0, :cond_c

    .line 627
    sget-object v0, sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    :cond_c
    monitor-exit v1

    .line 630
    return-void

    .line 629
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private adjustInputEventForCompatibility(Landroid/view/InputEvent;)V
    .registers 8
    .param p1, "e"    # Landroid/view/InputEvent;

    .prologue
    .line 7333
    iget v4, p0, mTargetSdkVersion:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_1e

    instance-of v4, p1, Landroid/view/MotionEvent;

    if-eqz v4, :cond_1e

    move-object v3, p1

    .line 7334
    check-cast v3, Landroid/view/MotionEvent;

    .line 7335
    .local v3, "motion":Landroid/view/MotionEvent;
    const/16 v2, 0x60

    .line 7337
    .local v2, "mask":I
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    .line 7338
    .local v0, "buttonState":I
    and-int/lit8 v4, v0, 0x60

    shr-int/lit8 v1, v4, 0x4

    .line 7339
    .local v1, "compatButtonState":I
    if-eqz v1, :cond_1e

    .line 7340
    or-int v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 7343
    .end local v0    # "buttonState":I
    .end local v1    # "compatButtonState":I
    .end local v2    # "mask":I
    .end local v3    # "motion":Landroid/view/MotionEvent;
    :cond_1e
    return-void
.end method

.method private applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1450
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v0, :cond_d

    .line 1451
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1456
    :goto_c
    return-void

    .line 1453
    :cond_d
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x81

    iget v1, p0, mClientWindowLayoutFlags:I

    and-int/lit16 v1, v1, 0x80

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_c
.end method

.method private cancelContentResizeAnimation()V
    .registers 2

    .prologue
    .line 9203
    iget-boolean v0, p0, mResizeAnimating:Z

    if-eqz v0, :cond_9

    .line 9204
    iget-object v0, p0, mContentResizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9206
    :cond_9
    return-void
.end method

.method private checkDcs(Landroid/content/pm/PackageInfo;)V
    .registers 3
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 673
    iget-boolean v0, p1, Landroid/content/pm/PackageInfo;->isDcsEnabledApp:Z

    sput-boolean v0, sIsDcsEnabledApp:Z

    .line 674
    iget v0, p1, Landroid/content/pm/PackageInfo;->dcsFormat:I

    sput v0, sDcsFormat:I

    .line 676
    return-void
.end method

.method private checkDss(Landroid/content/pm/PackageInfo;)V
    .registers 4
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 683
    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->dssFactor:D

    sput-wide v0, sDssFactor:D

    .line 685
    return-void
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 6343
    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-nez v2, :cond_8

    .line 6375
    :cond_7
    :goto_7
    return v1

    .line 6348
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 6349
    .local v0, "action":I
    if-eqz v0, :cond_11

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 6354
    :cond_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_7

    .line 6363
    invoke-static {p1}, isNavigationKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 6364
    invoke-virtual {p0, v1}, ensureTouchMode(Z)Z

    move-result v1

    goto :goto_7

    .line 6370
    :cond_24
    invoke-static {p1}, isTypingKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 6371
    invoke-virtual {p0, v1}, ensureTouchMode(Z)Z

    goto :goto_7
.end method

.method private checkPalmRejection(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4495
    const/4 v1, 0x0

    .line 4496
    .local v1, "SsumMajor":I
    const/4 v2, 0x0

    .line 4498
    .local v2, "bPalm":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 4499
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v0, :cond_28

    .line 4500
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1f

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v6

    const/high16 v7, 0x40400000    # 3.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_20

    :cond_1f
    const/4 v2, 0x1

    .line 4501
    :cond_20
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v6

    float-to-int v1, v6

    .line 4499
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 4505
    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPalm()F

    move-result v6

    const/high16 v7, -0x40000000    # -2.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_33

    .line 4510
    :cond_32
    :goto_32
    return v4

    .line 4507
    :cond_33
    const/16 v6, 0x64

    if-ge v1, v6, :cond_39

    if-ne v2, v5, :cond_32

    :cond_39
    move v4, v5

    .line 4508
    goto :goto_32
.end method

.method private collectViewAttributes()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 1459
    iget-object v3, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v3, :cond_6b

    .line 1461
    iget-object v3, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v3, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1462
    iget-object v3, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1463
    .local v0, "oldScreenOn":Z
    iget-object v3, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1464
    iget-object v3, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput v2, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1465
    iget-object v3, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v3, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 1466
    iget-object v3, p0, mView:Landroid/view/View;

    iget-object v4, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v3, v4, v2}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1467
    iget-object v3, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget-object v5, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v5, v5, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    iput v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1468
    iget-object v1, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 1469
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-direct {p0, v1}, getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1470
    iget-object v3, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-ne v3, v0, :cond_52

    iget-object v3, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-ne v3, v4, :cond_52

    iget-object v3, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iget-boolean v4, v1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eq v3, v4, :cond_6b

    .line 1473
    :cond_52
    invoke-direct {p0, v1}, applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 1474
    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1475
    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iput-boolean v2, v1, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 1476
    iget-object v2, p0, mView:Landroid/view/View;

    iget-object v3, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1477
    const/4 v2, 0x1

    .line 1480
    .end local v0    # "oldScreenOn":Z
    .end local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_6b
    return v2
.end method

.method private deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 16
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 7202
    const-wide/16 v10, 0x8

    const-string v12, "deliverInputEvent"

    iget-object v13, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v13}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v13

    invoke-static {v10, v11, v12, v13}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 7205
    iget-object v10, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v10, v10, Landroid/view/MotionEvent;

    if-eqz v10, :cond_be

    .line 7207
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 7210
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v10, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v11, -0x2

    if-ne v10, v11, :cond_4b

    iget-object v10, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v11, -0x2

    if-ne v10, v11, :cond_4b

    const/4 v2, 0x1

    .line 7212
    .local v2, "isFloating":Z
    :goto_26
    iget-object v10, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x834

    if-eq v10, v11, :cond_36

    iget-object v10, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x835

    if-ne v10, v11, :cond_4d

    :cond_36
    const/4 v4, 0x1

    .line 7214
    .local v4, "isMinimode":Z
    :goto_37
    if-nez v4, :cond_4f

    if-nez v2, :cond_4f

    iget-object v10, p0, mContext:Landroid/content/Context;

    if-eqz v10, :cond_4f

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->isTouchBlocked()Z

    move-result v10

    if-eqz v10, :cond_4f

    .line 7215
    invoke-direct {p0, p1}, finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7316
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v2    # "isFloating":Z
    .end local v4    # "isMinimode":Z
    :goto_4a
    return-void

    .line 7210
    .restart local v0    # "event":Landroid/view/MotionEvent;
    :cond_4b
    const/4 v2, 0x0

    goto :goto_26

    .line 7212
    .restart local v2    # "isFloating":Z
    :cond_4d
    const/4 v4, 0x0

    goto :goto_37

    .line 7220
    .restart local v4    # "isMinimode":Z
    :cond_4f
    const/high16 v8, 0x3f800000    # 1.0f

    .line 7221
    .local v8, "xScale":F
    const/high16 v9, 0x3f800000    # 1.0f

    .line 7222
    .local v9, "yScale":F
    const/4 v6, 0x0

    .line 7224
    .local v6, "stackOffset":Landroid/graphics/Point;
    iget-object v10, p0, mScaleFactor:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_68

    iget-object v10, p0, mScaleFactor:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_88

    .line 7225
    :cond_68
    invoke-direct {p0}, getStackPosition()Landroid/graphics/Point;

    move-result-object v6

    .line 7226
    if-eqz v6, :cond_88

    .line 7227
    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v11, p0, mScaleFactor:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    div-float v8, v10, v11

    .line 7228
    const/high16 v10, 0x3f800000    # 1.0f

    iget-object v11, p0, mScaleFactor:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    div-float v9, v10, v11

    .line 7229
    iget-object v10, p0, mTmpMotionEventMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v8, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 7230
    iget-object v10, p0, mTmpMotionEventMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 7233
    :cond_88
    invoke-virtual {v0, v8, v9}, Landroid/view/MotionEvent;->setScale(FF)V

    .line 7237
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->dssScale:F

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->setDssScale(F)V

    .line 7241
    if-eqz v6, :cond_be

    .line 7242
    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    .line 7243
    .local v5, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    .line 7244
    .local v1, "isCascade":Z
    const/4 v10, 0x4

    invoke-virtual {v5, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    .line 7245
    .local v3, "isMinimized":Z
    if-eqz v1, :cond_134

    if-nez v3, :cond_134

    iget-object v10, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v10, :cond_134

    iget-object v10, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v10, v10, Landroid/view/View$AttachInfo;->mWindowTop:I

    iget v11, v6, Landroid/graphics/Point;->y:I

    if-ge v10, v11, :cond_134

    .line 7247
    iget v10, v6, Landroid/graphics/Point;->x:I

    iget-object v11, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v11, v11, Landroid/view/View$AttachInfo;->mWindowTop:I

    invoke-virtual {v0, v10, v11}, Landroid/view/MotionEvent;->setScaledWindowOffset(II)V

    .line 7257
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v1    # "isCascade":Z
    .end local v2    # "isFloating":Z
    .end local v3    # "isMinimized":Z
    .end local v4    # "isMinimode":Z
    .end local v5    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v6    # "stackOffset":Landroid/graphics/Point;
    .end local v8    # "xScale":F
    .end local v9    # "yScale":F
    :cond_be
    :goto_be
    iget-object v10, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v10, v10, Landroid/view/MotionEvent;

    if-eqz v10, :cond_d3

    .line 7258
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 7259
    .restart local v0    # "event":Landroid/view/MotionEvent;
    iget-object v10, p0, mCocktailBar:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, mCocktailBar:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v10, v11}, Landroid/view/MotionEvent;->setWindowOffsetByCocktailBar(II)V

    .line 7265
    .end local v0    # "event":Landroid/view/MotionEvent;
    :cond_d3
    iget-object v10, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v10, v10, Landroid/view/MotionEvent;

    if-eqz v10, :cond_f1

    .line 7267
    sget-boolean v10, bFactoryBinary:Z

    if-nez v10, :cond_f1

    .line 7269
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 7270
    .restart local v0    # "event":Landroid/view/MotionEvent;
    invoke-direct {p0, v0}, checkPalmRejection(Landroid/view/MotionEvent;)Z

    move-result v10

    if-eqz v10, :cond_f1

    .line 7271
    invoke-direct {p0, v0}, getPalmRejection(Landroid/view/MotionEvent;)Z

    move-result v10

    if-eqz v10, :cond_f1

    .line 7272
    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 7281
    .end local v0    # "event":Landroid/view/MotionEvent;
    :cond_f1
    iget-object v10, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v10, v10, Landroid/view/MotionEvent;

    if-eqz v10, :cond_13c

    .line 7282
    iget-object v10, p0, mScaleFactor:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_13c

    iget-object v10, p0, mScaleFactor:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_13c

    .line 7283
    iget-object v10, p0, mCocktailGripDetector:Landroid/view/ViewRootImpl$CocktailGripDetector;

    if-eqz v10, :cond_13c

    .line 7284
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/MotionEvent;

    .line 7285
    .restart local v0    # "event":Landroid/view/MotionEvent;
    iget-object v10, p0, mCocktailGripDetector:Landroid/view/ViewRootImpl$CocktailGripDetector;

    invoke-virtual {v10, v0}, Landroid/view/ViewRootImpl$CocktailGripDetector;->checkGrip(Landroid/view/MotionEvent;)Z

    move-result v10

    if-eqz v10, :cond_11f

    .line 7286
    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 7289
    :cond_11f
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_13c

    iget-object v10, p0, mCocktailGripDetector:Landroid/view/ViewRootImpl$CocktailGripDetector;

    invoke-virtual {v10}, Landroid/view/ViewRootImpl$CocktailGripDetector;->checkBlock()Z

    move-result v10

    if-eqz v10, :cond_13c

    .line 7291
    invoke-direct {p0, p1}, finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto/16 :goto_4a

    .line 7249
    .restart local v1    # "isCascade":Z
    .restart local v2    # "isFloating":Z
    .restart local v3    # "isMinimized":Z
    .restart local v4    # "isMinimode":Z
    .restart local v5    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v6    # "stackOffset":Landroid/graphics/Point;
    .restart local v8    # "xScale":F
    .restart local v9    # "yScale":F
    :cond_134
    iget v10, v6, Landroid/graphics/Point;->x:I

    iget v11, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v10, v11}, Landroid/view/MotionEvent;->setScaledWindowOffset(II)V

    goto :goto_be

    .line 7300
    .end local v0    # "event":Landroid/view/MotionEvent;
    .end local v1    # "isCascade":Z
    .end local v2    # "isFloating":Z
    .end local v3    # "isMinimized":Z
    .end local v4    # "isMinimode":Z
    .end local v5    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v6    # "stackOffset":Landroid/graphics/Point;
    .end local v8    # "xScale":F
    .end local v9    # "yScale":F
    :cond_13c
    iget-object v10, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v10, :cond_148

    .line 7301
    iget-object v10, p0, mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    iget-object v11, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 7305
    :cond_148
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSendToSynthesizer()Z

    move-result v10

    if-eqz v10, :cond_157

    .line 7306
    iget-object v7, p0, mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 7311
    .local v7, "stage":Landroid/view/ViewRootImpl$InputStage;
    :goto_150
    if-eqz v7, :cond_163

    .line 7312
    invoke-virtual {v7, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto/16 :goto_4a

    .line 7308
    .end local v7    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :cond_157
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSkipIme()Z

    move-result v10

    if-eqz v10, :cond_160

    iget-object v7, p0, mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    .restart local v7    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :goto_15f
    goto :goto_150

    .end local v7    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :cond_160
    iget-object v7, p0, mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    goto :goto_15f

    .line 7314
    .restart local v7    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :cond_163
    invoke-direct {p0, p1}, finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto/16 :goto_4a
.end method

.method private destroyHardwareRenderer()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 6962
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 6964
    .local v0, "hardwareRenderer":Landroid/view/HardwareRenderer;
    if-eqz v0, :cond_1f

    .line 6965
    iget-object v1, p0, mView:Landroid/view/View;

    if-eqz v1, :cond_10

    .line 6966
    iget-object v1, p0, mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 6968
    :cond_10
    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->destroy()V

    .line 6969
    invoke-virtual {v0, v3}, Landroid/view/HardwareRenderer;->setRequested(Z)V

    .line 6971
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 6972
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v3, v1, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 6974
    :cond_1f
    return-void
.end method

.method private dispatchCoverStateChanged(Z)V
    .registers 4
    .param p1, "isOpen"    # Z

    .prologue
    .line 7829
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7830
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7831
    if-eqz p1, :cond_13

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 7832
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7834
    return-void

    .line 7831
    :cond_13
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private dispatchMultiWindowStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 7852
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7853
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7854
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 7855
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 7856
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7858
    return-void
.end method

.method private dispatchSurfaceDestroyDeferred()V
    .registers 3

    .prologue
    .line 7842
    iget-object v0, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 7843
    return-void
.end method

.method private draw(Z)V
    .registers 36
    .param p1, "fullRedrawNeeded"    # Z

    .prologue
    .line 2990
    move-object/from16 v0, p0

    iget-object v9, v0, mSurface:Landroid/view/Surface;

    .line 2991
    .local v9, "surface":Landroid/view/Surface;
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_24

    .line 2992
    :cond_c
    if-nez v9, :cond_16

    .line 2993
    const-string v2, "ViewSystem"

    const-string v3, "ViewRootImpl #1 Surface is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    :cond_15
    :goto_15
    return-void

    .line 2995
    :cond_16
    invoke-virtual {v9}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_15

    .line 2996
    const-string v2, "ViewSystem"

    const-string v3, "ViewRootImpl #2 Surface is not valid."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 3005
    :cond_24
    sget-boolean v2, sFirstDrawComplete:Z

    if-nez v2, :cond_51

    .line 3006
    sget-object v3, sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3007
    const/4 v2, 0x1

    :try_start_2c
    sput-boolean v2, sFirstDrawComplete:Z

    .line 3008
    sget-object v2, sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 3009
    .local v20, "count":I
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_36
    move/from16 v0, v27

    move/from16 v1, v20

    if-ge v0, v1, :cond_50

    .line 3010
    move-object/from16 v0, p0

    iget-object v4, v0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    sget-object v2, sFirstDrawHandlers:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v4, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 3009
    add-int/lit8 v27, v27, 0x1

    goto :goto_36

    .line 3012
    :cond_50
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_2c .. :try_end_51} :catchall_118

    .line 3015
    .end local v20    # "count":I
    .end local v27    # "i":I
    :cond_51
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    .line 3017
    move-object/from16 v0, p0

    iget-object v2, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    if-eqz v2, :cond_70

    .line 3018
    move-object/from16 v0, p0

    iget-object v2, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 3019
    move-object/from16 v0, p0

    iget-object v2, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    .line 3022
    :cond_70
    move-object/from16 v0, p0

    iget-object v2, v0, mScroller:Landroid/widget/Scroller;

    if-eqz v2, :cond_11b

    move-object/from16 v0, p0

    iget-object v2, v0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_11b

    const/16 v17, 0x1

    .line 3024
    .local v17, "animating":Z
    :goto_82
    if-eqz v17, :cond_11f

    .line 3025
    move-object/from16 v0, p0

    iget-object v2, v0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v21

    .line 3029
    .local v21, "curScrollY":I
    :goto_8c
    move-object/from16 v0, p0

    iget v2, v0, mCurScrollY:I

    move/from16 v0, v21

    if-eq v2, v0, :cond_b1

    .line 3030
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, mCurScrollY:I

    .line 3031
    const/16 p1, 0x1

    .line 3032
    move-object/from16 v0, p0

    iget-object v2, v0, mView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v2, :cond_b1

    .line 3033
    move-object/from16 v0, p0

    iget-object v2, v0, mView:Landroid/view/View;

    check-cast v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object/from16 v0, p0

    iget v3, v0, mCurScrollY:I

    invoke-interface {v2, v3}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    .line 3037
    :cond_b1
    move-object/from16 v0, p0

    iget-object v2, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v18, v0

    .line 3038
    .local v18, "appScale":F
    move-object/from16 v0, p0

    iget-object v2, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v13, v2, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 3040
    .local v13, "scalingRequired":Z
    const/16 v30, 0x0

    .line 3041
    .local v30, "resizeAlpha":I
    move-object/from16 v0, p0

    iget-object v2, v0, mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v2, :cond_f7

    .line 3042
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, mResizeBufferStartTime:J

    sub-long v22, v2, v4

    .line 3043
    .local v22, "deltaTime":J
    move-object/from16 v0, p0

    iget v2, v0, mResizeBufferDuration:I

    int-to-long v2, v2

    cmp-long v2, v22, v2

    if-gez v2, :cond_127

    .line 3044
    move-wide/from16 v0, v22

    long-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, mResizeBufferDuration:I

    int-to-float v3, v3

    div-float v16, v2, v3

    .line 3045
    .local v16, "amt":F
    sget-object v2, mResizeInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v16

    .line 3046
    const/16 v17, 0x1

    .line 3047
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, v16

    float-to-int v2, v2

    rsub-int v0, v2, 0xff

    move/from16 v30, v0

    .line 3053
    .end local v16    # "amt":F
    .end local v22    # "deltaTime":J
    :cond_f7
    :goto_f7
    move-object/from16 v0, p0

    iget-object v14, v0, mDirty:Landroid/graphics/Rect;

    .line 3054
    .local v14, "dirty":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v2, :cond_12b

    .line 3056
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 3057
    if-eqz v17, :cond_15

    .line 3058
    move-object/from16 v0, p0

    iget-object v2, v0, mScroller:Landroid/widget/Scroller;

    if-eqz v2, :cond_113

    .line 3059
    move-object/from16 v0, p0

    iget-object v2, v0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3061
    :cond_113
    invoke-virtual/range {p0 .. p0}, disposeResizeBuffer()V

    goto/16 :goto_15

    .line 3012
    .end local v13    # "scalingRequired":Z
    .end local v14    # "dirty":Landroid/graphics/Rect;
    .end local v17    # "animating":Z
    .end local v18    # "appScale":F
    .end local v21    # "curScrollY":I
    .end local v30    # "resizeAlpha":I
    :catchall_118
    move-exception v2

    :try_start_119
    monitor-exit v3
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_118

    throw v2

    .line 3022
    :cond_11b
    const/16 v17, 0x0

    goto/16 :goto_82

    .line 3027
    .restart local v17    # "animating":Z
    :cond_11f
    move-object/from16 v0, p0

    iget v0, v0, mScrollY:I

    move/from16 v21, v0

    .restart local v21    # "curScrollY":I
    goto/16 :goto_8c

    .line 3049
    .restart local v13    # "scalingRequired":Z
    .restart local v18    # "appScale":F
    .restart local v22    # "deltaTime":J
    .restart local v30    # "resizeAlpha":I
    :cond_127
    invoke-virtual/range {p0 .. p0}, disposeResizeBuffer()V

    goto :goto_f7

    .line 3066
    .end local v22    # "deltaTime":J
    .restart local v14    # "dirty":Landroid/graphics/Rect;
    :cond_12b
    if-eqz p1, :cond_14f

    .line 3067
    move-object/from16 v0, p0

    iget-object v2, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 3068
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, mWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v18

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, mHeight:I

    int-to-float v5, v5

    mul-float v5, v5, v18

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3080
    :cond_14f
    move-object/from16 v0, p0

    iget-object v2, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->dispatchOnDraw()V

    .line 3082
    const/4 v11, 0x0

    .line 3083
    .local v11, "xOffset":I
    move/from16 v12, v21

    .line 3084
    .local v12, "yOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v29, v0

    .line 3085
    .local v29, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz v29, :cond_254

    move-object/from16 v0, v29

    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 3086
    .local v7, "surfaceInsets":Landroid/graphics/Rect;
    :goto_167
    if-eqz v7, :cond_19d

    .line 3087
    iget v2, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v2

    .line 3088
    iget v2, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v2

    .line 3092
    move-object/from16 v0, p0

    iget-object v2, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_257

    move-object/from16 v0, p0

    iget-object v2, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v2, :cond_257

    .line 3093
    iget v2, v14, Landroid/graphics/Rect;->left:I

    iget v3, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v14, Landroid/graphics/Rect;->left:I

    .line 3094
    iget v2, v14, Landroid/graphics/Rect;->top:I

    iget v3, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v14, Landroid/graphics/Rect;->top:I

    .line 3095
    iget v2, v14, Landroid/graphics/Rect;->right:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v14, Landroid/graphics/Rect;->right:I

    .line 3096
    iget v2, v14, Landroid/graphics/Rect;->bottom:I

    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, v14, Landroid/graphics/Rect;->bottom:I

    .line 3102
    :cond_19d
    :goto_19d
    const/4 v15, 0x0

    .line 3103
    .local v15, "accessibilityFocusDirty":Z
    move-object/from16 v0, p0

    iget-object v2, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    .line 3104
    .local v24, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v24, :cond_1ca

    .line 3105
    move-object/from16 v0, p0

    iget-object v2, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 3106
    .local v19, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v26

    .line 3107
    .local v26, "hasFocus":Z
    if-nez v26, :cond_1bd

    .line 3108
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V

    .line 3110
    :cond_1bd
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ca

    .line 3111
    const/4 v15, 0x1

    .line 3115
    .end local v19    # "bounds":Landroid/graphics/Rect;
    .end local v26    # "hasFocus":Z
    :cond_1ca
    move-object/from16 v0, p0

    iget-object v2, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v3}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v4

    const-wide/32 v32, 0xf4240

    div-long v4, v4, v32

    iput-wide v4, v2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 3118
    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1eb

    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsAnimating:Z

    if-nez v2, :cond_1eb

    if-eqz v15, :cond_248

    .line 3119
    :cond_1eb
    move-object/from16 v0, p0

    iget-object v2, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v2, :cond_260

    move-object/from16 v0, p0

    iget-object v2, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_260

    .line 3121
    move/from16 v28, v15

    .line 3124
    .local v28, "invalidateRoot":Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsAnimating:Z

    .line 3126
    move-object/from16 v0, p0

    iget v2, v0, mHardwareYOffset:I

    if-ne v2, v12, :cond_212

    move-object/from16 v0, p0

    iget v2, v0, mHardwareXOffset:I

    if-eq v2, v11, :cond_21c

    .line 3127
    :cond_212
    move-object/from16 v0, p0

    iput v12, v0, mHardwareYOffset:I

    .line 3128
    move-object/from16 v0, p0

    iput v11, v0, mHardwareXOffset:I

    .line 3129
    const/16 v28, 0x1

    .line 3131
    :cond_21c
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, mResizeAlpha:I

    .line 3133
    if-eqz v28, :cond_22d

    .line 3134
    move-object/from16 v0, p0

    iget-object v2, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->invalidateRoot()V

    .line 3137
    :cond_22d
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 3139
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mBlockResizeBuffer:Z

    .line 3140
    move-object/from16 v0, p0

    iget-object v2, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v3, v0, mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/HardwareRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V

    .line 3173
    .end local v28    # "invalidateRoot":Z
    :cond_248
    if-eqz v17, :cond_15

    .line 3174
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mFullRedrawNeeded:Z

    .line 3175
    invoke-virtual/range {p0 .. p0}, scheduleTraversals()V

    goto/16 :goto_15

    .line 3085
    .end local v7    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v15    # "accessibilityFocusDirty":Z
    .end local v24    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_254
    const/4 v7, 0x0

    goto/16 :goto_167

    .line 3098
    .restart local v7    # "surfaceInsets":Landroid/graphics/Rect;
    :cond_257
    iget v2, v7, Landroid/graphics/Rect;->left:I

    iget v3, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v14, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_19d

    .line 3150
    .restart local v15    # "accessibilityFocusDirty":Z
    .restart local v24    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_260
    move-object/from16 v0, p0

    iget-object v2, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v2, :cond_2ad

    move-object/from16 v0, p0

    iget-object v2, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2ad

    move-object/from16 v0, p0

    iget-object v2, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v2}, Landroid/view/HardwareRenderer;->isRequested()Z

    move-result v2

    if-eqz v2, :cond_2ad

    .line 3155
    :try_start_280
    move-object/from16 v0, p0

    iget-object v2, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget v3, v0, mWidth:I

    move-object/from16 v0, p0

    iget v4, v0, mHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, mSurface:Landroid/view/Surface;

    invoke-virtual/range {v2 .. v7}, Landroid/view/HardwareRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_299
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_280 .. :try_end_299} :catch_2a3

    .line 3162
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mFullRedrawNeeded:Z

    .line 3163
    invoke-virtual/range {p0 .. p0}, scheduleTraversals()V

    goto/16 :goto_15

    .line 3157
    :catch_2a3
    move-exception v25

    .line 3158
    .local v25, "e":Landroid/view/Surface$OutOfResourcesException;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    goto/16 :goto_15

    .line 3167
    .end local v25    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_2ad
    move-object/from16 v0, p0

    iget-object v10, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_248

    goto/16 :goto_15
.end method

.method private drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 3300
    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v2, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 3301
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v0}, getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3302
    invoke-direct {p0}, getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3303
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_17

    .line 3304
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3305
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3310
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_17
    :goto_17
    return-void

    .line 3307
    :cond_18
    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_17

    .line 3308
    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_17
.end method

.method private drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;)Z
    .registers 15
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "scalingRequired"    # Z
    .param p6, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 3186
    sget-boolean v6, sRendererDemoted:Z

    if-eqz v6, :cond_6

    .line 3187
    const/4 v6, 0x0

    .line 3286
    :goto_5
    return v6

    .line 3194
    :cond_6
    :try_start_6
    iget v3, p6, Landroid/graphics/Rect;->left:I

    .line 3195
    .local v3, "left":I
    iget v5, p6, Landroid/graphics/Rect;->top:I

    .line 3196
    .local v5, "top":I
    iget v4, p6, Landroid/graphics/Rect;->right:I

    .line 3197
    .local v4, "right":I
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    .line 3199
    .local v0, "bottom":I
    iget-object v6, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {v6, p6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    .line 3202
    .local v1, "canvas":Landroid/graphics/Canvas;
    sget v6, sDcsFormat:I

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setDCSFormat(I)V

    .line 3207
    iget v6, p6, Landroid/graphics/Rect;->left:I

    if-ne v3, v6, :cond_29

    iget v6, p6, Landroid/graphics/Rect;->top:I

    if-ne v5, v6, :cond_29

    iget v6, p6, Landroid/graphics/Rect;->right:I

    if-ne v4, v6, :cond_29

    iget v6, p6, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v6, :cond_2c

    .line 3209
    :cond_29
    const/4 v6, 0x1

    iput-boolean v6, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 3213
    :cond_2c
    iget v6, p0, mDensity:I

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_31
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_6 .. :try_end_31} :catch_7d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_31} :catch_83

    .line 3241
    :try_start_31
    invoke-virtual {v1}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v6

    if-eqz v6, :cond_3b

    if-nez p4, :cond_3b

    if-eqz p3, :cond_41

    .line 3242
    :cond_3b
    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3245
    :cond_41
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 3246
    const/4 v6, 0x0

    iput-boolean v6, p0, mIsAnimating:Z

    .line 3247
    iget-object v6, p0, mView:Landroid/view/View;

    iget v7, v6, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v6, Landroid/view/View;->mPrivateFlags:I
    :try_end_4f
    .catchall {:try_start_31 .. :try_end_4f} :catchall_9c

    .line 3256
    neg-int v6, p3

    int-to-float v6, v6

    neg-int v7, p4

    int-to-float v7, v7

    :try_start_53
    invoke-virtual {v1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3257
    iget-object v6, p0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v6, :cond_5f

    .line 3258
    iget-object v6, p0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v6, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 3260
    :cond_5f
    if-eqz p5, :cond_91

    iget v6, p0, mNoncompatDensity:I

    :goto_63
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 3261
    const/4 v6, 0x0

    iput-boolean v6, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 3263
    iget-object v6, p0, mView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3265
    invoke-direct {p0, v1}, drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    :try_end_71
    .catchall {:try_start_53 .. :try_end_71} :catchall_93

    .line 3267
    :try_start_71
    iget-boolean v6, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v6, :cond_78

    .line 3269
    const/4 v6, 0x0

    iput-boolean v6, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_9c

    .line 3274
    :cond_78
    :try_start_78
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_7b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_78 .. :try_end_7b} :catch_a1

    .line 3286
    const/4 v6, 0x1

    goto :goto_5

    .line 3214
    .end local v0    # "bottom":I
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v5    # "top":I
    :catch_7d
    move-exception v2

    .line 3215
    .local v2, "e":Landroid/view/Surface$OutOfResourcesException;
    invoke-direct {p0, v2}, handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    .line 3216
    const/4 v6, 0x0

    goto :goto_5

    .line 3217
    .end local v2    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_83
    move-exception v2

    .line 3218
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "ViewRootImpl"

    const-string v7, "Could not lock surface"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3222
    const/4 v6, 0x1

    iput-boolean v6, p0, mLayoutRequested:Z

    .line 3223
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 3260
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "bottom":I
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v3    # "left":I
    .restart local v4    # "right":I
    .restart local v5    # "top":I
    :cond_91
    const/4 v6, 0x0

    goto :goto_63

    .line 3267
    :catchall_93
    move-exception v6

    :try_start_94
    iget-boolean v7, p2, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v7, :cond_9b

    .line 3269
    const/4 v7, 0x0

    iput-boolean v7, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    :cond_9b
    throw v6
    :try_end_9c
    .catchall {:try_start_94 .. :try_end_9c} :catchall_9c

    .line 3273
    :catchall_9c
    move-exception v6

    .line 3274
    :try_start_9d
    invoke-virtual {p1, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_a0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9d .. :try_end_a0} :catch_af

    .line 3279
    throw v6

    .line 3275
    :catch_a1
    move-exception v2

    .line 3276
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "ViewRootImpl"

    const-string v7, "Could not unlock surface"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3277
    const/4 v6, 0x1

    iput-boolean v6, p0, mLayoutRequested:Z

    .line 3279
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 3275
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_af
    move-exception v2

    .line 3276
    .restart local v2    # "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "ViewRootImpl"

    const-string v7, "Could not unlock surface"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3277
    const/4 v6, 0x1

    iput-boolean v6, p0, mLayoutRequested:Z

    .line 3279
    const/4 v6, 0x0

    goto/16 :goto_5
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 6814
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6815
    if-nez p3, :cond_c

    .line 6816
    const-string/jumbo v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6832
    :cond_b
    return-void

    .line 6819
    :cond_c
    invoke-virtual {p3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6820
    instance-of v3, p3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_b

    move-object v1, p3

    .line 6823
    check-cast v1, Landroid/view/ViewGroup;

    .line 6824
    .local v1, "grp":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 6825
    .local v0, "N":I
    if-lez v0, :cond_b

    .line 6828
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6829
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_34
    if-ge v2, v0, :cond_b

    .line 6830
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 6829
    add-int/lit8 v2, v2, 0x1

    goto :goto_34
.end method

.method private enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V
    .registers 12
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1001
    iget-object v8, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v7, v8, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 1002
    iget-object v8, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v7, v8, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    .line 1010
    sget-boolean v8, sIsDcsEnabledApp:Z

    if-eqz v8, :cond_1c

    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v8, v6, :cond_16

    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz v8, :cond_1c

    :cond_16
    sget v8, sDcsFormat:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1c

    .line 1066
    :cond_1b
    :goto_1b
    return-void

    .line 1018
    :cond_1c
    iget-object v8, p0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v8, :cond_1b

    .line 1021
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v9, 0x1000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_45

    move v2, v6

    .line 1024
    .local v2, "hardwareAccelerated":Z
    :goto_28
    if-eqz v2, :cond_1b

    .line 1025
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 1038
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_47

    move v0, v6

    .line 1040
    .local v0, "fakeHwAccelerated":Z
    :goto_37
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_49

    move v1, v6

    .line 1043
    .local v1, "forceHwAccelerated":Z
    :goto_3e
    if-eqz v0, :cond_4b

    .line 1047
    iget-object v7, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v6, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    goto :goto_1b

    .end local v0    # "fakeHwAccelerated":Z
    .end local v1    # "forceHwAccelerated":Z
    .end local v2    # "hardwareAccelerated":Z
    :cond_45
    move v2, v7

    .line 1021
    goto :goto_28

    .restart local v2    # "hardwareAccelerated":Z
    :cond_47
    move v0, v7

    .line 1038
    goto :goto_37

    .restart local v0    # "fakeHwAccelerated":Z
    :cond_49
    move v1, v7

    .line 1040
    goto :goto_3e

    .line 1048
    .restart local v1    # "forceHwAccelerated":Z
    :cond_4b
    sget-boolean v8, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    if-eqz v8, :cond_55

    sget-boolean v8, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    if-eqz v8, :cond_1b

    if-eqz v1, :cond_1b

    .line 1050
    :cond_55
    iget-object v8, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v8, :cond_62

    .line 1051
    iget-object v8, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v8}, Landroid/view/HardwareRenderer;->destroy()V

    .line 1054
    :cond_62
    iget-object v4, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 1055
    .local v4, "insets":Landroid/graphics/Rect;
    iget v8, v4, Landroid/graphics/Rect;->left:I

    if-nez v8, :cond_74

    iget v8, v4, Landroid/graphics/Rect;->right:I

    if-nez v8, :cond_74

    iget v8, v4, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_74

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v8, :cond_a8

    :cond_74
    move v3, v6

    .line 1057
    .local v3, "hasSurfaceInsets":Z
    :goto_75
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7c

    if-eqz v3, :cond_aa

    :cond_7c
    move v5, v6

    .line 1058
    .local v5, "translucent":Z
    :goto_7d
    iget-object v7, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, p0, mContext:Landroid/content/Context;

    sget-boolean v9, sRendererDemoted:Z

    invoke-static {v8, v5, v9}, Landroid/view/HardwareRenderer;->create(Landroid/content/Context;ZZ)Landroid/view/HardwareRenderer;

    move-result-object v8

    iput-object v8, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 1059
    iget-object v7, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v7, :cond_1b

    .line 1060
    iget-object v7, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/HardwareRenderer;->setName(Ljava/lang/String;)V

    .line 1061
    iget-object v7, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v6, v8, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    iput-boolean v6, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    goto/16 :goto_1b

    .end local v3    # "hasSurfaceInsets":Z
    .end local v5    # "translucent":Z
    :cond_a8
    move v3, v7

    .line 1055
    goto :goto_75

    .restart local v3    # "hasSurfaceInsets":Z
    :cond_aa
    move v5, v7

    .line 1057
    goto :goto_7d
.end method

.method private ensureTouchModeLocally(Z)Z
    .registers 3
    .param p1, "inTouchMode"    # Z

    .prologue
    .line 4414
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-eq v0, p1, :cond_a

    iget-boolean v0, p0, mResizeAnimating:Z

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    .line 4419
    :goto_b
    return v0

    .line 4416
    :cond_c
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 4417
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    .line 4419
    if-eqz p1, :cond_1e

    invoke-direct {p0}, enterTouchMode()Z

    move-result v0

    goto :goto_b

    :cond_1e
    invoke-direct {p0}, leaveTouchMode()Z

    move-result v0

    goto :goto_b
.end method

.method private enterTouchMode()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4423
    iget-object v4, p0, mView:Landroid/view/View;

    if-eqz v4, :cond_2c

    iget-object v4, p0, mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 4427
    iget-object v4, p0, mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 4428
    .local v1, "focused":Landroid/view/View;
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 4429
    invoke-static {v1}, findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 4430
    .local v0, "ancestorToTakeFocus":Landroid/view/ViewGroup;
    if-eqz v0, :cond_27

    .line 4434
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v2

    .line 4443
    .end local v0    # "ancestorToTakeFocus":Landroid/view/ViewGroup;
    .end local v1    # "focused":Landroid/view/View;
    :goto_26
    return v2

    .line 4438
    .restart local v0    # "ancestorToTakeFocus":Landroid/view/ViewGroup;
    .restart local v1    # "focused":Landroid/view/View;
    :cond_27
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/View;->clearFocusInternal(Landroid/view/View;ZZ)V

    goto :goto_26

    .end local v0    # "ancestorToTakeFocus":Landroid/view/ViewGroup;
    .end local v1    # "focused":Landroid/view/View;
    :cond_2c
    move v2, v3

    .line 4443
    goto :goto_26
.end method

.method private static findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 6
    .param p0, "focused"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 4453
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4454
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_5
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_28

    move-object v1, v0

    .line 4455
    check-cast v1, Landroid/view/ViewGroup;

    .line 4456
    .local v1, "vgParent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_1b

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 4466
    .end local v1    # "vgParent":Landroid/view/ViewGroup;
    :goto_1a
    return-object v1

    .line 4460
    .restart local v1    # "vgParent":Landroid/view/ViewGroup;
    :cond_1b
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_23

    move-object v1, v2

    .line 4461
    goto :goto_1a

    .line 4463
    :cond_23
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4465
    goto :goto_5

    .end local v1    # "vgParent":Landroid/view/ViewGroup;
    :cond_28
    move-object v1, v2

    .line 4466
    goto :goto_1a
.end method

.method private finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 7
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 7319
    const-wide/16 v2, 0x8

    const-string v1, "deliverInputEvent"

    iget-object v4, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v4}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v4

    invoke-static {v2, v3, v1, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 7322
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    if-eqz v1, :cond_25

    .line 7323
    iget v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_23

    const/4 v0, 0x1

    .line 7324
    .local v0, "handled":Z
    :goto_18
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1, v2, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 7329
    .end local v0    # "handled":Z
    :goto_1f
    invoke-direct {p0, p1}, recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7330
    return-void

    .line 7323
    :cond_23
    const/4 v0, 0x0

    goto :goto_18

    .line 7326
    :cond_25
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    goto :goto_1f
.end method

.method private static forceLayout(Landroid/view/View;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 3843
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 3844
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1b

    move-object v1, p0

    .line 3845
    check-cast v1, Landroid/view/ViewGroup;

    .line 3846
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3847
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_1b

    .line 3848
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, forceLayout(Landroid/view/View;)V

    .line 3847
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 3851
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_1b
    return-void
.end method

.method private getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;
    .registers 14

    .prologue
    .line 3352
    iget-object v9, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_2b

    .line 3353
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 3354
    .local v8, "value":Landroid/util/TypedValue;
    iget-object v9, p0, mView:Landroid/view/View;

    iget-object v9, v9, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v10, 0x1160031

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v8, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    .line 3356
    .local v4, "resolved":Z
    if-eqz v4, :cond_2b

    .line 3357
    iget-object v9, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, p0, mView:Landroid/view/View;

    iget-object v10, v10, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v11, v8, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 3363
    .end local v4    # "resolved":Z
    .end local v8    # "value":Landroid/util/TypedValue;
    :cond_2b
    iget-object v9, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "enabled_accessibility_s_talkback"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_11f

    const/4 v2, 0x1

    .line 3365
    .local v2, "galaxyTalkBackEnabled":Z
    :goto_38
    const/4 v9, 0x1

    const/high16 v10, 0x40000000    # 2.0f

    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v3, v9

    .line 3368
    .local v3, "px":I
    if-eqz v2, :cond_122

    .line 3369
    const/4 v9, 0x1

    iget-object v10, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "accessibility_large_cursor"

    const/4 v12, 0x2

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v6, v9

    .line 3372
    .local v6, "strokeWidth":I
    iget-object v9, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "accessibility_cursor_color"

    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1060164

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 3375
    .local v5, "strokeColor":I
    iget-object v9, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 3376
    .local v1, "draw2":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1, v6, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 3377
    iget-object v9, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 3386
    .end local v5    # "strokeColor":I
    .end local v6    # "strokeWidth":I
    :goto_88
    iget-object v9, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v10, "universal_switch_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13e

    const/4 v7, 0x1

    .line 3388
    .local v7, "universalSwitchEnabled":Z
    :goto_96
    sget-boolean v9, SAFE_DEBUG:Z

    if-eqz v9, :cond_b3

    .line 3389
    const-string v9, "ViewRootImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "universal Switch enabled:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    :cond_b3
    if-eqz v7, :cond_11a

    .line 3393
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x106016d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 3395
    .restart local v5    # "strokeColor":I
    iget-object v9, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "accessibility_universal_switch_cursor_color"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3397
    .local v0, "color":I
    sget-boolean v9, SAFE_DEBUG:Z

    if-eqz v9, :cond_e8

    .line 3398
    const-string v9, "ViewRootImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "universal Switch current color:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3399
    :cond_e8
    const/4 v9, 0x1

    if-ne v0, v9, :cond_141

    .line 3400
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x106016d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 3421
    :goto_f8
    iget-object v9, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .end local v1    # "draw2":Landroid/graphics/drawable/GradientDrawable;
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 3424
    .restart local v1    # "draw2":Landroid/graphics/drawable/GradientDrawable;
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105028e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v6, v9

    .line 3426
    .restart local v6    # "strokeWidth":I
    invoke-virtual {v1, v6, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 3427
    iget-object v9, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 3428
    const-string v9, "ViewRootImpl"

    const-string v10, "Changing accessibility focused drawable according to Universal Switch settings"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    .end local v0    # "color":I
    .end local v5    # "strokeColor":I
    .end local v6    # "strokeWidth":I
    :cond_11a
    iget-object v9, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    return-object v9

    .line 3363
    .end local v1    # "draw2":Landroid/graphics/drawable/GradientDrawable;
    .end local v2    # "galaxyTalkBackEnabled":Z
    .end local v3    # "px":I
    .end local v7    # "universalSwitchEnabled":Z
    :cond_11f
    const/4 v2, 0x0

    goto/16 :goto_38

    .line 3379
    .restart local v2    # "galaxyTalkBackEnabled":Z
    .restart local v3    # "px":I
    :cond_122
    iget-object v9, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 3380
    .restart local v1    # "draw2":Landroid/graphics/drawable/GradientDrawable;
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060164

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v1, v3, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 3381
    iget-object v9, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v1, v9, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_88

    .line 3386
    :cond_13e
    const/4 v7, 0x0

    goto/16 :goto_96

    .line 3402
    .restart local v0    # "color":I
    .restart local v5    # "strokeColor":I
    .restart local v7    # "universalSwitchEnabled":Z
    :cond_141
    const/4 v9, 0x2

    if-ne v0, v9, :cond_152

    .line 3403
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x106016e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_f8

    .line 3405
    :cond_152
    const/4 v9, 0x5

    if-ne v0, v9, :cond_163

    .line 3406
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060171

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_f8

    .line 3408
    :cond_163
    const/4 v9, 0x6

    if-ne v0, v9, :cond_174

    .line 3409
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060172

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_f8

    .line 3411
    :cond_174
    const/4 v9, 0x4

    if-ne v0, v9, :cond_186

    .line 3412
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1060170

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto/16 :goto_f8

    .line 3414
    :cond_186
    const/4 v9, 0x3

    if-ne v0, v9, :cond_198

    .line 3415
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x106016f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto/16 :goto_f8

    .line 3418
    :cond_198
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x106016d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto/16 :goto_f8
.end method

.method private getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z
    .registers 11
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3313
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    .line 3314
    .local v2, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_f

    .line 3347
    :cond_e
    :goto_e
    return v6

    .line 3316
    :cond_f
    const/4 v4, 0x0

    .line 3317
    .local v4, "universalSwitchEnabled":Z
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "universal_switch_enabled"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_64

    move v4, v5

    .line 3321
    :goto_20
    if-nez v4, :cond_28

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 3324
    :cond_28
    iget-object v1, p0, mAccessibilityFocusedHost:Landroid/view/View;

    .line 3325
    .local v1, "host":Landroid/view/View;
    if-eqz v1, :cond_e

    iget-object v7, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v7, :cond_e

    .line 3329
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 3330
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v3, :cond_66

    .line 3331
    invoke-virtual {v1, p1, v5}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 3339
    :goto_39
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    .line 3340
    .local v0, "attachInfo":Landroid/view/View$AttachInfo;
    iget-object v7, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v7, v7, mScrollY:I

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 3341
    iget v7, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v7, v7

    iget v8, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 3342
    iget-object v7, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v7, v7, mWidth:I

    iget-object v8, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v8, v8, mHeight:I

    invoke-virtual {p1, v6, v6, v7, v8}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v7

    if-nez v7, :cond_5c

    .line 3345
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3347
    :cond_5c
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_70

    :goto_62
    move v6, v5

    goto :goto_e

    .end local v0    # "attachInfo":Landroid/view/View$AttachInfo;
    .end local v1    # "host":Landroid/view/View;
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_64
    move v4, v6

    .line 3317
    goto :goto_20

    .line 3332
    .restart local v1    # "host":Landroid/view/View;
    .restart local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_66
    iget-object v7, p0, mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v7, :cond_e

    .line 3333
    iget-object v7, p0, mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v7, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    goto :goto_39

    .restart local v0    # "attachInfo":Landroid/view/View$AttachInfo;
    :cond_70
    move v5, v6

    .line 3347
    goto :goto_62
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .registers 3

    .prologue
    .line 6643
    iget-object v0, p0, mView:Landroid/view/View;

    if-nez v0, :cond_c

    .line 6644
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6646
    :cond_c
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_20

    .line 6647
    iget-object v0, p0, mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    .line 6649
    :cond_20
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .registers 9
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .prologue
    .line 8100
    iget-object v5, p0, mTempHashSet:Ljava/util/HashSet;

    if-nez v5, :cond_b

    .line 8101
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, mTempHashSet:Ljava/util/HashSet;

    .line 8103
    :cond_b
    iget-object v4, p0, mTempHashSet:Ljava/util/HashSet;

    .line 8104
    .local v4, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 8105
    move-object v0, p1

    .line 8106
    .local v0, "firstCurrent":Landroid/view/View;
    :goto_11
    if-eqz v0, :cond_22

    .line 8107
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8108
    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8109
    .local v1, "firstCurrentParent":Landroid/view/ViewParent;
    instance-of v5, v1, Landroid/view/View;

    if-eqz v5, :cond_20

    move-object v0, v1

    .line 8110
    check-cast v0, Landroid/view/View;

    goto :goto_11

    .line 8112
    :cond_20
    const/4 v0, 0x0

    goto :goto_11

    .line 8115
    .end local v1    # "firstCurrentParent":Landroid/view/ViewParent;
    :cond_22
    move-object v2, p2

    .line 8116
    .local v2, "secondCurrent":Landroid/view/View;
    :goto_23
    if-eqz v2, :cond_3b

    .line 8117
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 8118
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 8129
    .end local v2    # "secondCurrent":Landroid/view/View;
    :goto_2e
    return-object v2

    .line 8121
    .restart local v2    # "secondCurrent":Landroid/view/View;
    :cond_2f
    iget-object v3, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8122
    .local v3, "secondCurrentParent":Landroid/view/ViewParent;
    instance-of v5, v3, Landroid/view/View;

    if-eqz v5, :cond_39

    move-object v2, v3

    .line 8123
    check-cast v2, Landroid/view/View;

    goto :goto_23

    .line 8125
    :cond_39
    const/4 v2, 0x0

    goto :goto_23

    .line 8128
    .end local v3    # "secondCurrentParent":Landroid/view/ViewParent;
    :cond_3b
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 8129
    const/4 v2, 0x0

    goto :goto_2e
.end method

.method private static getGfxInfo(Landroid/view/View;[I)V
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "info"    # [I

    .prologue
    .line 6842
    iget-object v3, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    .line 6843
    .local v3, "renderNode":Landroid/view/RenderNode;
    const/4 v4, 0x0

    aget v5, p1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, p1, v4

    .line 6844
    if-eqz v3, :cond_15

    .line 6845
    const/4 v4, 0x1

    aget v5, p1, v4

    invoke-virtual {v3}, Landroid/view/RenderNode;->getDebugSize()I

    move-result v6

    add-int/2addr v5, v6

    aput v5, p1, v4

    .line 6848
    :cond_15
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2d

    move-object v1, p0

    .line 6849
    check-cast v1, Landroid/view/ViewGroup;

    .line 6851
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 6852
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    if-ge v2, v0, :cond_2d

    .line 6853
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, p1}, getGfxInfo(Landroid/view/View;[I)V

    .line 6852
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 6856
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_2d
    return-void
.end method

.method private getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I
    .registers 5
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1484
    const/4 v0, 0x0

    .line 1486
    .local v0, "vis":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_a

    .line 1487
    or-int/lit16 v0, v0, 0x500

    .line 1489
    :cond_a
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    .line 1490
    or-int/lit16 v0, v0, 0x300

    .line 1492
    :cond_13
    return v0
.end method

.method private getPalmRejection(Landroid/view/MotionEvent;)Z
    .registers 29
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4515
    const/16 v24, 0x14

    move/from16 v0, v24

    new-array v13, v0, [I

    .line 4516
    .local v13, "Sxd":[I
    const/16 v24, 0x14

    move/from16 v0, v24

    new-array v14, v0, [I

    .line 4517
    .local v14, "Syd":[I
    const/16 v24, 0x14

    move/from16 v0, v24

    new-array v2, v0, [I

    .line 4518
    .local v2, "Major":[I
    const/16 v24, 0x14

    move/from16 v0, v24

    new-array v3, v0, [I

    .line 4520
    .local v3, "Minor":[I
    const/4 v12, 0x0

    .line 4522
    .local v12, "SvarX":F
    const/4 v10, 0x0

    .line 4523
    .local v10, "SsumX":F
    const/4 v11, 0x0

    .line 4524
    .local v11, "SsumY":F
    const/4 v7, 0x0

    .line 4525
    .local v7, "SsumEccen":F
    const/4 v8, 0x0

    .line 4526
    .local v8, "SsumMajor":F
    const/4 v9, 0x0

    .line 4527
    .local v9, "SsumMinor":F
    const/4 v5, 0x0

    .line 4528
    .local v5, "SmeanX":F
    const/4 v6, 0x0

    .line 4529
    .local v6, "SmeanY":F
    const/16 v16, 0x0

    .line 4531
    .local v16, "bPalm":Z
    const/high16 v15, 0x43480000    # 200.0f

    .line 4533
    .local v15, "TILT_TO_ZOOM_XVAR":F
    const/16 v21, 0x0

    .line 4534
    .local v21, "mScreenWidth":I
    const/16 v20, 0x0

    .line 4535
    .local v20, "mScreenHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 4538
    .local v4, "N":I
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5f

    .line 4539
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string/jumbo v25, "window"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/WindowManager;

    .line 4540
    .local v23, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    .line 4541
    .local v17, "disp":Landroid/view/Display;
    new-instance v22, Landroid/util/DisplayMetrics;

    invoke-direct/range {v22 .. v22}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4542
    .local v22, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4544
    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    .line 4545
    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_5f} :catch_b1

    .line 4547
    .end local v17    # "disp":Landroid/view/Display;
    .end local v22    # "metrics":Landroid/util/DisplayMetrics;
    .end local v23    # "wm":Landroid/view/WindowManager;
    :cond_5f
    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_ad

    .line 4548
    move/from16 v0, v21

    int-to-float v15, v0

    .line 4556
    :goto_68
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_6a
    move/from16 v0, v19

    if-ge v0, v4, :cond_ba

    .line 4557
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    aput v24, v13, v19

    .line 4558
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    aput v24, v14, v19

    .line 4559
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    aput v24, v2, v19

    .line 4560
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    aput v24, v3, v19

    .line 4556
    add-int/lit8 v19, v19, 0x1

    goto :goto_6a

    .line 4550
    .end local v19    # "i":I
    :cond_ad
    move/from16 v0, v20

    int-to-float v15, v0

    goto :goto_68

    .line 4552
    :catch_b1
    move-exception v18

    .line 4553
    .local v18, "e":Ljava/lang/Exception;
    const-string v24, "ViewRootImpl"

    const-string v25, "[Surface touch] Default Rotate = false"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 4563
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v19    # "i":I
    :cond_ba
    const/16 v19, 0x0

    :goto_bc
    move/from16 v0, v19

    if-ge v0, v4, :cond_e7

    .line 4564
    aget v24, v13, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v10, v10, v24

    .line 4565
    aget v24, v14, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v11, v11, v24

    .line 4566
    aget v24, v2, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v8, v8, v24

    .line 4567
    aget v24, v3, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v9, v9, v24

    .line 4563
    add-int/lit8 v19, v19, 0x1

    goto :goto_bc

    .line 4570
    :cond_e7
    int-to-float v0, v4

    move/from16 v24, v0

    div-float v5, v10, v24

    .line 4571
    int-to-float v0, v4

    move/from16 v24, v0

    div-float v6, v11, v24

    .line 4572
    div-float v7, v8, v9

    .line 4574
    const/16 v19, 0x0

    :goto_f5
    move/from16 v0, v19

    if-ge v0, v4, :cond_13e

    .line 4575
    aget v24, v13, v19

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v5

    aget v25, v13, v19

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v25, v5

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    add-float v12, v12, v24

    .line 4576
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v24

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v24, v24, v25

    if-eqz v24, :cond_139

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPalm(I)F

    move-result v24

    const/high16 v25, 0x40400000    # 3.0f

    cmpl-float v24, v24, v25

    if-nez v24, :cond_13b

    :cond_139
    const/16 v16, 0x1

    .line 4574
    :cond_13b
    add-int/lit8 v19, v19, 0x1

    goto :goto_f5

    .line 4578
    :cond_13e
    int-to-float v0, v4

    move/from16 v24, v0

    div-float v12, v12, v24

    .line 4580
    const/16 v24, 0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_186

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_186

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_186

    .line 4581
    const-string v24, "ViewRootImpl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[ViewRootImpl] action cancel - 1, eccen:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4582
    const/16 v24, 0x1

    .line 4590
    :goto_185
    return v24

    .line 4584
    :cond_186
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1e6

    const/high16 v24, 0x42c80000    # 100.0f

    cmpl-float v24, v8, v24

    if-ltz v24, :cond_1e6

    const/high16 v24, 0x40000000    # 2.0f

    cmpl-float v24, v7, v24

    if-lez v24, :cond_1e6

    add-int/lit8 v24, v4, 0x4

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v15, v24

    cmpg-float v24, v12, v24

    if-gez v24, :cond_1e6

    .line 4586
    const-string v24, "ViewRootImpl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "[ViewRootImpl] action cancel - 2, Palm Sweep, SsumMajor:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " eccen:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " varX:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4587
    const/16 v24, 0x1

    goto :goto_185

    .line 4590
    :cond_1e6
    const/16 v24, 0x0

    goto :goto_185
.end method

.method private static getRootMeasureSpec(II)I
    .registers 4
    .param p0, "windowSize"    # I
    .param p1, "rootDimension"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 2817
    packed-switch p1, :pswitch_data_16

    .line 2829
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2832
    .local v0, "measureSpec":I
    :goto_9
    return v0

    .line 2821
    .end local v0    # "measureSpec":I
    :pswitch_a
    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2822
    .restart local v0    # "measureSpec":I
    goto :goto_9

    .line 2825
    .end local v0    # "measureSpec":I
    :pswitch_f
    const/high16 v1, -0x80000000

    invoke-static {p0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2826
    .restart local v0    # "measureSpec":I
    goto :goto_9

    .line 2817
    :pswitch_data_16
    .packed-switch -0x2
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method static getRunQueue()Landroid/view/ViewRootImpl$RunQueue;
    .registers 2

    .prologue
    .line 8496
    sget-object v1, sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl$RunQueue;

    .line 8497
    .local v0, "rq":Landroid/view/ViewRootImpl$RunQueue;
    if-eqz v0, :cond_b

    .line 8502
    :goto_a
    return-object v0

    .line 8500
    :cond_b
    new-instance v0, Landroid/view/ViewRootImpl$RunQueue;

    .end local v0    # "rq":Landroid/view/ViewRootImpl$RunQueue;
    invoke-direct {v0}, Landroid/view/ViewRootImpl$RunQueue;-><init>()V

    .line 8501
    .restart local v0    # "rq":Landroid/view/ViewRootImpl$RunQueue;
    sget-object v1, sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_a
.end method

.method private getStackPosition()Landroid/graphics/Point;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 8958
    iget-object v2, p0, mContext:Landroid/content/Context;

    if-nez v2, :cond_6

    .line 8965
    :cond_5
    :goto_5
    return-object v1

    .line 8961
    :cond_6
    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 8962
    .local v0, "bound":Landroid/graphics/Rect;
    if-eqz v0, :cond_5

    .line 8963
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_5
.end method

.method private getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .registers 11
    .param p2, "secondLayoutRequests"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2740
    .local p1, "layoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2741
    .local v2, "numViewsRequestingLayout":I
    const/4 v4, 0x0

    .line 2742
    .local v4, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v2, :cond_4b

    .line 2743
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 2744
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_3b

    iget-object v6, v5, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_3b

    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_3b

    if-nez p2, :cond_22

    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x1000

    const/16 v7, 0x1000

    if-ne v6, v7, :cond_3b

    .line 2747
    :cond_22
    const/4 v0, 0x0

    .line 2748
    .local v0, "gone":Z
    move-object v3, v5

    .line 2750
    .local v3, "parent":Landroid/view/View;
    :goto_24
    if-eqz v3, :cond_2f

    .line 2751
    iget v6, v3, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3e

    .line 2752
    const/4 v0, 0x1

    .line 2761
    :cond_2f
    if-nez v0, :cond_3b

    .line 2762
    if-nez v4, :cond_38

    .line 2763
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2765
    .restart local v4    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_38
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2742
    .end local v0    # "gone":Z
    .end local v3    # "parent":Landroid/view/View;
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2755
    .restart local v0    # "gone":Z
    .restart local v3    # "parent":Landroid/view/View;
    :cond_3e
    iget-object v6, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_49

    .line 2756
    iget-object v3, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local v3    # "parent":Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .restart local v3    # "parent":Landroid/view/View;
    goto :goto_24

    .line 2758
    :cond_49
    const/4 v3, 0x0

    goto :goto_24

    .line 2769
    .end local v0    # "gone":Z
    .end local v3    # "parent":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    :cond_4b
    if-nez p2, :cond_74

    .line 2771
    const/4 v1, 0x0

    :goto_4e
    if-ge v1, v2, :cond_74

    .line 2772
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 2773
    .restart local v5    # "view":Landroid/view/View;
    :goto_56
    if-eqz v5, :cond_71

    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_71

    .line 2775
    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, -0x1001

    iput v6, v5, Landroid/view/View;->mPrivateFlags:I

    .line 2776
    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v6, v6, Landroid/view/View;

    if-eqz v6, :cond_6f

    .line 2777
    iget-object v5, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .end local v5    # "view":Landroid/view/View;
    check-cast v5, Landroid/view/View;

    .restart local v5    # "view":Landroid/view/View;
    goto :goto_56

    .line 2779
    :cond_6f
    const/4 v5, 0x0

    goto :goto_56

    .line 2771
    :cond_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 2784
    .end local v5    # "view":Landroid/view/View;
    :cond_74
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2785
    return-object v4
.end method

.method private handleDispatchCoverStateChanged(Z)V
    .registers 3
    .param p1, "isOpen"    # Z

    .prologue
    .line 6579
    iget-object v0, p0, mView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 6587
    :cond_4
    :goto_4
    return-void

    .line 6580
    :cond_5
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mIsOpen:Z

    if-eq v0, p1, :cond_4

    .line 6583
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mIsOpen:Z

    .line 6584
    iget-object v0, p0, mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchCoverStateChanged(Z)V

    goto :goto_4
.end method

.method private handleDispatchMultiWindowStateChanged(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 6624
    iget-object v0, p0, mView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 6628
    :goto_4
    return-void

    .line 6626
    :cond_5
    iget-object v0, p0, mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchMultiWindowStateChanged(I)V

    goto :goto_4
.end method

.method private handleDispatchSurfaceDestroyDeferred()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 6595
    iput-boolean v3, p0, mWindowsExitAnimating:Z

    .line 6596
    iget-boolean v2, p0, mAppVisible:Z

    if-eqz v2, :cond_d

    iget v2, p0, mReportedViewVisibility:I

    if-ne v2, v4, :cond_49

    :cond_d
    iget-object v2, p0, mView:Landroid/view/View;

    if-eqz v2, :cond_49

    iget-object v2, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_49

    .line 6599
    invoke-virtual {p0}, getHostVisibility()I

    move-result v1

    .line 6600
    .local v1, "viewVisibility":I
    iget-boolean v2, p0, mAdded:Z

    if-eqz v2, :cond_47

    iget-boolean v2, p0, mFirst:Z

    if-nez v2, :cond_47

    iget v2, p0, mViewVisibility:I

    if-eq v2, v1, :cond_47

    .line 6601
    iget-object v0, p0, mView:Landroid/view/View;

    .line 6602
    .local v0, "host":Landroid/view/View;
    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v2, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 6603
    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 6604
    if-eqz v1, :cond_37

    .line 6605
    invoke-virtual {p0}, destroyHardwareResources()V

    .line 6607
    :cond_37
    if-ne v1, v4, :cond_42

    .line 6608
    iput-boolean v3, p0, mHasHadWindowFocus:Z

    .line 6610
    :try_start_3b
    iget-object v2, p0, mWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_42} :catch_4a

    .line 6614
    :cond_42
    :goto_42
    iget-object v2, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 6616
    .end local v0    # "host":Landroid/view/View;
    :cond_47
    iput v1, p0, mViewVisibility:I

    .line 6618
    .end local v1    # "viewVisibility":I
    :cond_49
    return-void

    .line 6611
    .restart local v0    # "host":Landroid/view/View;
    .restart local v1    # "viewVisibility":I
    :catch_4a
    move-exception v2

    goto :goto_42
.end method

.method private handleDragEvent(Landroid/view/DragEvent;)V
    .registers 15
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 6387
    iget-object v10, p0, mView:Landroid/view/View;

    if-eqz v10, :cond_3e

    iget-boolean v10, p0, mAdded:Z

    if-eqz v10, :cond_3e

    .line 6388
    iget v9, p1, Landroid/view/DragEvent;->mAction:I

    .line 6391
    .local v9, "what":I
    iget-object v10, p0, mScaleFactor:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_1e

    iget-object v10, p0, mScaleFactor:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_36

    .line 6392
    :cond_1e
    iget v10, p1, Landroid/view/DragEvent;->mX:F

    const/high16 v11, 0x3f800000    # 1.0f

    iget-object v12, p0, mScaleFactor:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    iput v10, p1, Landroid/view/DragEvent;->mX:F

    .line 6393
    iget v10, p1, Landroid/view/DragEvent;->mY:F

    const/high16 v11, 0x3f800000    # 1.0f

    iget-object v12, p0, mScaleFactor:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    div-float/2addr v11, v12

    mul-float/2addr v10, v11

    iput v10, p1, Landroid/view/DragEvent;->mY:F

    .line 6397
    :cond_36
    const/4 v10, 0x6

    if-ne v9, v10, :cond_42

    .line 6402
    iget-object v10, p0, mView:Landroid/view/View;

    invoke-virtual {v10, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 6516
    .end local v9    # "what":I
    :cond_3e
    :goto_3e
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    .line 6517
    return-void

    .line 6406
    .restart local v9    # "what":I
    :cond_42
    const/4 v10, 0x1

    if-ne v9, v10, :cond_173

    .line 6407
    const/4 v10, 0x0

    iput-object v10, p0, mCurrentDragView:Landroid/view/View;

    .line 6408
    iget-object v10, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v10, p0, mDragDescription:Landroid/content/ClipDescription;

    .line 6410
    iget-object v10, p0, mContext:Landroid/content/Context;

    if-eqz v10, :cond_65

    iget-object v10, p0, mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->hasWindowFocus()Z

    move-result v10

    if-eqz v10, :cond_65

    .line 6411
    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    .line 6412
    .local v4, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    if-eqz v10, :cond_65

    .line 6413
    const/4 v10, 0x1

    iput-boolean v10, p0, mFocusDragStartWin:Z

    .line 6422
    .end local v4    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_65
    :goto_65
    const/4 v10, 0x2

    if-eq v9, v10, :cond_6b

    const/4 v10, 0x3

    if-ne v9, v10, :cond_98

    .line 6423
    :cond_6b
    iget-object v10, p0, mDragPoint:Landroid/graphics/PointF;

    iget v11, p1, Landroid/view/DragEvent;->mX:F

    iget v12, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v10, v11, v12}, Landroid/graphics/PointF;->set(FF)V

    .line 6424
    iget-object v10, p0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v10, :cond_7f

    .line 6425
    iget-object v10, p0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v11, p0, mDragPoint:Landroid/graphics/PointF;

    invoke-virtual {v10, v11}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 6428
    :cond_7f
    iget v10, p0, mCurScrollY:I

    if-eqz v10, :cond_8c

    .line 6429
    iget-object v10, p0, mDragPoint:Landroid/graphics/PointF;

    const/4 v11, 0x0

    iget v12, p0, mCurScrollY:I

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/PointF;->offset(FF)V

    .line 6432
    :cond_8c
    iget-object v10, p0, mDragPoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iput v10, p1, Landroid/view/DragEvent;->mX:F

    .line 6433
    iget-object v10, p0, mDragPoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iput v10, p1, Landroid/view/DragEvent;->mY:F

    .line 6437
    :cond_98
    iget-object v5, p0, mCurrentDragView:Landroid/view/View;

    .line 6440
    .local v5, "prevDragView":Landroid/view/View;
    iget-object v10, p0, mView:Landroid/view/View;

    invoke-virtual {v10, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v6

    .line 6443
    .local v6, "result":Z
    iget-object v10, p0, mCurrentDragView:Landroid/view/View;

    if-eq v5, v10, :cond_b8

    .line 6445
    if-eqz v5, :cond_ad

    .line 6446
    :try_start_a6
    iget-object v10, p0, mWindowSession:Landroid/view/IWindowSession;

    iget-object v11, p0, mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v10, v11}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 6448
    :cond_ad
    iget-object v10, p0, mCurrentDragView:Landroid/view/View;

    if-eqz v10, :cond_b8

    .line 6449
    iget-object v10, p0, mWindowSession:Landroid/view/IWindowSession;

    iget-object v11, p0, mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v10, v11}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V
    :try_end_b8
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_b8} :catch_179

    .line 6457
    :cond_b8
    :goto_b8
    const/4 v10, 0x3

    if-ne v9, v10, :cond_167

    .line 6458
    const/4 v10, 0x0

    iput-object v10, p0, mDragDescription:Landroid/content/ClipDescription;

    .line 6460
    :try_start_be
    const-string v10, "ViewRootImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Reporting drop result: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6461
    iget-object v10, p0, mWindowSession:Landroid/view/IWindowSession;

    iget-object v11, p0, mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v10, v11, v6}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_dd
    .catch Landroid/os/RemoteException; {:try_start_be .. :try_end_dd} :catch_183

    .line 6467
    :goto_dd
    if-nez v6, :cond_167

    iget-boolean v10, p0, mFocusDragStartWin:Z

    if-nez v10, :cond_167

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v10

    if-eqz v10, :cond_167

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData;->getItemCount()I

    move-result v10

    if-lez v10, :cond_167

    .line 6469
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    .line 6470
    .local v2, "description":Landroid/content/ClipDescription;
    if-eqz v2, :cond_167

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_167

    .line 6471
    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Multiwindow drag and drop image"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_123

    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Multiwindow drag and drop text"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_167

    .line 6473
    :cond_123
    iget-object v0, p0, mContext:Landroid/content/Context;

    .line 6474
    .local v0, "context":Landroid/content/Context;
    instance-of v10, v0, Landroid/app/Activity;

    if-nez v10, :cond_135

    .line 6475
    if-eqz v0, :cond_135

    instance-of v10, v0, Landroid/content/ContextWrapper;

    if-eqz v10, :cond_135

    .line 6476
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 6479
    .restart local v0    # "context":Landroid/content/Context;
    :cond_135
    if-eqz v0, :cond_167

    instance-of v10, v0, Landroid/app/Activity;

    if-eqz v10, :cond_167

    .line 6490
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x1030128

    invoke-direct {v1, v10, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 6496
    .local v1, "defaultContext":Landroid/content/Context;
    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x1040bad

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v1, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 6498
    .local v7, "toast":Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v10

    const v11, 0x102000b

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 6499
    .local v8, "tv":Landroid/widget/TextView;
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6500
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 6510
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "defaultContext":Landroid/content/Context;
    .end local v2    # "description":Landroid/content/ClipDescription;
    .end local v7    # "toast":Landroid/widget/Toast;
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_167
    const/4 v10, 0x4

    if-ne v9, v10, :cond_3e

    .line 6511
    const/4 v10, 0x0

    iput-boolean v10, p0, mFocusDragStartWin:Z

    .line 6512
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, setLocalDragState(Ljava/lang/Object;)V

    goto/16 :goto_3e

    .line 6418
    .end local v5    # "prevDragView":Landroid/view/View;
    .end local v6    # "result":Z
    :cond_173
    iget-object v10, p0, mDragDescription:Landroid/content/ClipDescription;

    iput-object v10, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    goto/16 :goto_65

    .line 6451
    .restart local v5    # "prevDragView":Landroid/view/View;
    .restart local v6    # "result":Z
    :catch_179
    move-exception v3

    .line 6452
    .local v3, "e":Landroid/os/RemoteException;
    const-string v10, "ViewRootImpl"

    const-string v11, "Unable to note drag target change"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b8

    .line 6462
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_183
    move-exception v3

    .line 6463
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "ViewRootImpl"

    const-string v11, "Unable to report drop result"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_dd
.end method

.method private handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    .registers 4
    .param p1, "e"    # Landroid/view/Surface$OutOfResourcesException;

    .prologue
    .line 2540
    const-string v0, "ViewRootImpl"

    const-string v1, "OutOfResourcesException initializing HW surface"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2542
    :try_start_7
    iget-object v0, p0, mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2c

    .line 2544
    const-string v0, "ViewRootImpl"

    const-string v1, "No processes killed for memory; killing self"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    const-string v0, "-k -t -z -d -o /data/log/dumpstate_surfaceoom"

    invoke-static {v0}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 2548
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_2c} :catch_30

    .line 2552
    :cond_2c
    :goto_2c
    const/4 v0, 0x1

    iput-boolean v0, p0, mLayoutRequested:Z

    .line 2553
    return-void

    .line 2550
    :catch_30
    move-exception v0

    goto :goto_2c
.end method

.method private handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 20
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 7971
    move-object/from16 v0, p0

    iget-object v7, v0, mAccessibilityFocusedHost:Landroid/view/View;

    .line 7972
    .local v7, "focusedHost":Landroid/view/View;
    if-eqz v7, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    if-nez v16, :cond_f

    .line 8047
    :cond_e
    :goto_e
    return-void

    .line 7977
    :cond_f
    invoke-virtual {v7}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v14

    .line 7978
    .local v14, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v14, :cond_29

    .line 7980
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, mAccessibilityFocusedHost:Landroid/view/View;

    .line 7981
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 7982
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    goto :goto_e

    .line 7988
    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v3

    .line 7989
    .local v3, "changes":I
    and-int/lit8 v16, v3, 0x1

    if-nez v16, :cond_33

    if-nez v3, :cond_e

    .line 7994
    :cond_33
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v4

    .line 7995
    .local v4, "eventSourceNodeId":J
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    .line 7998
    .local v2, "changedViewId":I
    const/4 v10, 0x0

    .line 7999
    .local v10, "hostInSubtree":Z
    move-object/from16 v0, p0

    iget-object v15, v0, mAccessibilityFocusedHost:Landroid/view/View;

    .line 8000
    .local v15, "root":Landroid/view/View;
    :goto_40
    if-eqz v15, :cond_5e

    if-nez v10, :cond_5e

    .line 8001
    invoke-virtual {v15}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v16

    move/from16 v0, v16

    if-ne v2, v0, :cond_4e

    .line 8002
    const/4 v10, 0x1

    goto :goto_40

    .line 8004
    :cond_4e
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    .line 8005
    .local v13, "parent":Landroid/view/ViewParent;
    instance-of v0, v13, Landroid/view/View;

    move/from16 v16, v0

    if-eqz v16, :cond_5c

    move-object v15, v13

    .line 8006
    check-cast v15, Landroid/view/View;

    goto :goto_40

    .line 8008
    :cond_5c
    const/4 v15, 0x0

    goto :goto_40

    .line 8014
    .end local v13    # "parent":Landroid/view/ViewParent;
    :cond_5e
    if-eqz v10, :cond_e

    .line 8018
    move-object/from16 v0, p0

    iget-object v0, v0, mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v8

    .line 8019
    .local v8, "focusedSourceNodeId":J
    invoke-static {v8, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v6

    .line 8020
    .local v6, "focusedChildId":I
    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v6, v0, :cond_76

    .line 8022
    const/4 v6, -0x1

    .line 8026
    :cond_76
    move-object/from16 v0, p0

    iget-object v12, v0, mTempRect:Landroid/graphics/Rect;

    .line 8027
    .local v12, "oldBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 8028
    invoke-virtual {v14, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 8029
    move-object/from16 v0, p0

    iget-object v0, v0, mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    if-nez v16, :cond_b8

    .line 8031
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, mAccessibilityFocusedHost:Landroid/view/View;

    .line 8032
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    .line 8036
    sget-object v16, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v16

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v6, v0, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 8038
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, invalidateRectOnScreen(Landroid/graphics/Rect;)V

    goto/16 :goto_e

    .line 8041
    :cond_b8
    move-object/from16 v0, p0

    iget-object v0, v0, mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen()Landroid/graphics/Rect;

    move-result-object v11

    .line 8042
    .local v11, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_e

    .line 8043
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 8044
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, invalidateRectOnScreen(Landroid/graphics/Rect;)V

    goto/16 :goto_e
.end method

.method private initContentResizeAnimator()V
    .registers 7

    .prologue
    .line 9126
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, mContentResizeAnimator:Landroid/animation/ValueAnimator;

    .line 9127
    iget-object v0, p0, mContentResizeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9129
    iget-object v0, p0, mContentResizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/ViewRootImpl$5;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$5;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9156
    iget-object v0, p0, mContentResizeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/ViewRootImpl$6;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$6;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9166
    new-instance v0, Landroid/view/animation/interpolator/CircEaseInOut;

    invoke-direct {v0}, Landroid/view/animation/interpolator/CircEaseInOut;-><init>()V

    iput-object v0, p0, mShowInterpolator:Landroid/view/animation/Interpolator;

    .line 9167
    new-instance v0, Landroid/view/animation/interpolator/SineEaseIn;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineEaseIn;-><init>()V

    iput-object v0, p0, mHideInterpolator:Landroid/view/animation/Interpolator;

    .line 9169
    iget-object v0, p0, mResizeBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_43

    .line 9170
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, mResizeBooster:Landroid/os/DVFSHelper;

    .line 9172
    :cond_43
    iget-object v0, p0, mResizeBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_4e

    .line 9173
    iget-object v0, p0, mResizeBooster:Landroid/os/DVFSHelper;

    const-string v1, "PhoneWindowManager_rotation"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 9174
    :cond_4e
    return-void
.end method

.method private invalidateRectOnScreen(Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    .line 1287
    iget-object v2, p0, mDirty:Landroid/graphics/Rect;

    .line 1288
    .local v2, "localDirty":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1289
    iget-object v3, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 1290
    iget-object v3, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1294
    :cond_1a
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 1297
    iget-object v3, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 1298
    .local v0, "appScale":F
    iget v3, p0, mWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v7

    float-to-int v3, v3

    iget v4, p0, mHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {v2, v8, v8, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    .line 1300
    .local v1, "intersected":Z
    if-nez v1, :cond_3e

    .line 1301
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1303
    :cond_3e
    iget-boolean v3, p0, mWillDrawSoon:Z

    if-nez v3, :cond_4b

    if-nez v1, :cond_48

    iget-boolean v3, p0, mIsAnimating:Z

    if-eqz v3, :cond_4b

    .line 1304
    :cond_48
    invoke-virtual {p0}, scheduleTraversals()V

    .line 1306
    :cond_4b
    return-void
.end method

.method private isInLocalFocusMode()Z
    .registers 3

    .prologue
    .line 944
    iget-object v0, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static isInTouchMode()Z
    .registers 2

    .prologue
    .line 658
    invoke-static {}, Landroid/view/WindowManagerGlobal;->peekWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    .line 659
    .local v0, "windowSession":Landroid/view/IWindowSession;
    if-eqz v0, :cond_c

    .line 661
    :try_start_6
    invoke-interface {v0}, Landroid/view/IWindowSession;->getInTouchMode()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_b

    move-result v1

    .line 665
    :goto_a
    return v1

    .line 662
    :catch_b
    move-exception v1

    .line 665
    :cond_c
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private static isNavigationKey(Landroid/view/KeyEvent;)Z
    .registers 2
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 6308
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_c

    .line 6323
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 6321
    :sswitch_9
    const/4 v0, 0x1

    goto :goto_8

    .line 6308
    nop

    :sswitch_data_c
    .sparse-switch
        0x13 -> :sswitch_9
        0x14 -> :sswitch_9
        0x15 -> :sswitch_9
        0x16 -> :sswitch_9
        0x17 -> :sswitch_9
        0x3d -> :sswitch_9
        0x3e -> :sswitch_9
        0x42 -> :sswitch_9
        0x5c -> :sswitch_9
        0x5d -> :sswitch_9
        0x7a -> :sswitch_9
        0x7b -> :sswitch_9
    .end sparse-switch
.end method

.method static isTerminalInputEvent(Landroid/view/InputEvent;)Z
    .registers 7
    .param p0, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 7346
    instance-of v5, p0, Landroid/view/KeyEvent;

    if-eqz v5, :cond_12

    move-object v1, p0

    .line 7347
    check-cast v1, Landroid/view/KeyEvent;

    .line 7348
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_10

    .line 7352
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :goto_f
    return v3

    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_10
    move v3, v4

    .line 7348
    goto :goto_f

    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_12
    move-object v2, p0

    .line 7350
    check-cast v2, Landroid/view/MotionEvent;

    .line 7351
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 7352
    .local v0, "action":I
    if-eq v0, v3, :cond_22

    const/4 v5, 0x3

    if-eq v0, v5, :cond_22

    const/16 v5, 0xa

    if-ne v0, v5, :cond_23

    :cond_22
    move v4, v3

    :cond_23
    move v3, v4

    goto :goto_f
.end method

.method private static isTypingKey(Landroid/view/KeyEvent;)Z
    .registers 2
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 6332
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 3834
    if-ne p0, p1, :cond_4

    .line 3839
    :cond_3
    :goto_3
    return v1

    .line 3838
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3839
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_14

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_14
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private leaveTouchMode()Z
    .registers 7

    .prologue
    const/16 v5, 0x82

    const/4 v2, 0x0

    .line 4470
    iget-object v3, p0, mView:Landroid/view/View;

    if-eqz v3, :cond_19

    .line 4471
    iget-object v3, p0, mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 4472
    iget-object v3, p0, mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 4473
    .local v1, "focusedView":Landroid/view/View;
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-nez v3, :cond_1a

    .line 4491
    .end local v1    # "focusedView":Landroid/view/View;
    :cond_19
    :goto_19
    return v2

    .line 4476
    .restart local v1    # "focusedView":Landroid/view/View;
    :cond_1a
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "focusedView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_19

    .line 4486
    :cond_24
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v5}, focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 4487
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_19

    .line 4488
    invoke-virtual {v0, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    goto :goto_19
.end method

.method private measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z
    .registers 16
    .param p1, "host"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "desiredWindowWidth"    # I
    .param p5, "desiredWindowHeight"    # I

    .prologue
    const/high16 v9, 0x1000000

    .line 1499
    const/4 v5, 0x0

    .line 1505
    .local v5, "windowSizeMayChange":Z
    const/4 v3, 0x0

    .line 1506
    .local v3, "goodMeasure":Z
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_46

    .line 1511
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1512
    .local v4, "packageMetrics":Landroid/util/DisplayMetrics;
    const v6, 0x105000e

    iget-object v7, p0, mTmpValue:Landroid/util/TypedValue;

    const/4 v8, 0x1

    invoke-virtual {p3, v6, v7, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1513
    const/4 v0, 0x0

    .line 1514
    .local v0, "baseSize":I
    iget-object v6, p0, mTmpValue:Landroid/util/TypedValue;

    iget v6, v6, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_25

    .line 1515
    iget-object v6, p0, mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {v6, v4}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v0, v6

    .line 1518
    :cond_25
    if-eqz v0, :cond_46

    if-le p4, v0, :cond_46

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x834

    if-eq v6, v7, :cond_46

    .line 1522
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0, v6}, getRootMeasureSpec(II)I

    move-result v2

    .line 1523
    .local v2, "childWidthMeasureSpec":I
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p5, v6}, getRootMeasureSpec(II)I

    move-result v1

    .line 1524
    .local v1, "childHeightMeasureSpec":I
    invoke-direct {p0, v2, v1}, performMeasure(II)V

    .line 1527
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v6

    and-int/2addr v6, v9

    if-nez v6, :cond_69

    .line 1528
    const/4 v3, 0x1

    .line 1546
    .end local v0    # "baseSize":I
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v4    # "packageMetrics":Landroid/util/DisplayMetrics;
    :cond_46
    :goto_46
    if-nez v3, :cond_68

    .line 1547
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {p4, v6}, getRootMeasureSpec(II)I

    move-result v2

    .line 1548
    .restart local v2    # "childWidthMeasureSpec":I
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p5, v6}, getRootMeasureSpec(II)I

    move-result v1

    .line 1549
    .restart local v1    # "childHeightMeasureSpec":I
    invoke-direct {p0, v2, v1}, performMeasure(II)V

    .line 1550
    iget v6, p0, mWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-ne v6, v7, :cond_67

    iget v6, p0, mHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-eq v6, v7, :cond_68

    .line 1551
    :cond_67
    const/4 v5, 0x1

    .line 1561
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    :cond_68
    return v5

    .line 1531
    .restart local v0    # "baseSize":I
    .restart local v1    # "childHeightMeasureSpec":I
    .restart local v2    # "childWidthMeasureSpec":I
    .restart local v4    # "packageMetrics":Landroid/util/DisplayMetrics;
    :cond_69
    add-int v6, v0, p4

    div-int/lit8 v0, v6, 0x2

    .line 1534
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v0, v6}, getRootMeasureSpec(II)I

    move-result v2

    .line 1535
    invoke-direct {p0, v2, v1}, performMeasure(II)V

    .line 1538
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v6

    and-int/2addr v6, v9

    if-nez v6, :cond_46

    .line 1540
    const/4 v3, 0x1

    goto :goto_46
.end method

.method private obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;
    .registers 7
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;
    .param p3, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 7098
    iget-object v0, p0, mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7099
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-eqz v0, :cond_18

    .line 7100
    iget v1, p0, mQueuedInputEventPoolSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, mQueuedInputEventPoolSize:I

    .line 7101
    iget-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v1, p0, mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7102
    iput-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7107
    :goto_11
    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7108
    iput-object p2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 7109
    iput p3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 7110
    return-object v0

    .line 7104
    :cond_18
    new-instance v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    .end local v0    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    invoke-direct {v0, v2}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>(Landroid/view/ViewRootImpl$1;)V

    .restart local v0    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    goto :goto_11
.end method

.method private performDraw()V
    .registers 15

    .prologue
    const/4 v10, 0x1

    const-wide/16 v12, 0x8

    const/4 v11, 0x0

    .line 2919
    iget-object v8, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v8, v8, Landroid/view/View$AttachInfo;->mDisplayState:I

    if-ne v8, v10, :cond_13

    iget-boolean v8, p0, mReportNextDraw:Z

    if-nez v8, :cond_13

    iget-boolean v8, p0, mForceDraw:Z

    if-nez v8, :cond_13

    .line 2987
    :cond_12
    :goto_12
    return-void

    .line 2923
    :cond_13
    iget-boolean v8, p0, mStopped:Z

    if-eqz v8, :cond_29

    iget-boolean v8, p0, mReportNextDraw:Z

    if-nez v8, :cond_29

    iget-boolean v8, p0, mForceDraw:Z

    if-nez v8, :cond_29

    iget-object v8, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "aod_show_state"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_12

    .line 2929
    :cond_29
    iput-boolean v11, p0, mForceDraw:Z

    .line 2931
    iget-boolean v4, p0, mFullRedrawNeeded:Z

    .line 2932
    .local v4, "fullRedrawNeeded":Z
    iput-boolean v11, p0, mFullRedrawNeeded:Z

    .line 2934
    iput-boolean v10, p0, mIsDrawing:Z

    .line 2935
    const-string v8, "draw"

    invoke-static {v12, v13, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2938
    :try_start_36
    iget-boolean v8, p0, mIsThisWindowDontNeedSurfaceBuffer:Z

    if-nez v8, :cond_63

    .line 2939
    invoke-direct {p0, v4}, draw(Z)V
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_99

    .line 2945
    :cond_3d
    :goto_3d
    iput-boolean v11, p0, mIsDrawing:Z

    .line 2946
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2951
    iget-object v8, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v8, :cond_a7

    .line 2952
    iget-object v8, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    .line 2953
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_51
    if-ge v5, v3, :cond_a0

    .line 2954
    iget-object v8, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/RenderNode;

    invoke-virtual {v8}, Landroid/view/RenderNode;->endAllAnimators()V

    .line 2953
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    .line 2940
    .end local v3    # "count":I
    .end local v5    # "i":I
    :cond_63
    :try_start_63
    sget-boolean v8, SAFE_DEBUG:Z

    if-eqz v8, :cond_3d

    .line 2941
    const-string v8, "ViewRootImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "window="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v10}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",  mIsThisWindowDontNeedSurfaceBuffer="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, mIsThisWindowDontNeedSurfaceBuffer:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".    So, skip drawing."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_63 .. :try_end_98} :catchall_99

    goto :goto_3d

    .line 2945
    :catchall_99
    move-exception v8

    iput-boolean v11, p0, mIsDrawing:Z

    .line 2946
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    throw v8

    .line 2956
    .restart local v3    # "count":I
    .restart local v5    # "i":I
    :cond_a0
    iget-object v8, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 2959
    .end local v3    # "count":I
    .end local v5    # "i":I
    :cond_a7
    iget-boolean v8, p0, mReportNextDraw:Z

    if-eqz v8, :cond_12

    .line 2960
    iput-boolean v11, p0, mReportNextDraw:Z

    .line 2961
    iget-object v8, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v8, :cond_c2

    .line 2962
    const-string v8, "fence"

    invoke-static {v12, v13, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2963
    iget-object v8, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v8}, Landroid/view/HardwareRenderer;->fence()V

    .line 2964
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2970
    :cond_c2
    iget-object v8, p0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v8, :cond_f2

    iget-object v8, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {v8}, Landroid/view/Surface;->isValid()Z

    move-result v8

    if-eqz v8, :cond_f2

    .line 2971
    iget-object v8, p0, mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    iget-object v9, p0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v8, v9}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 2972
    iget-object v8, p0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v8}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v2

    .line 2973
    .local v2, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v2, :cond_f2

    .line 2974
    move-object v0, v2

    .local v0, "arr$":[Landroid/view/SurfaceHolder$Callback;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_e0
    if-ge v6, v7, :cond_f2

    aget-object v1, v0, v6

    .line 2975
    .local v1, "c":Landroid/view/SurfaceHolder$Callback;
    instance-of v8, v1, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v8, :cond_ef

    .line 2976
    check-cast v1, Landroid/view/SurfaceHolder$Callback2;

    .end local v1    # "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v8, p0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v1, v8}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 2974
    :cond_ef
    add-int/lit8 v6, v6, 0x1

    goto :goto_e0

    .line 2983
    .end local v0    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_f2
    :try_start_f2
    iget-object v8, p0, mWindowSession:Landroid/view/IWindowSession;

    iget-object v9, p0, mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v8, v9}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_f9
    .catch Landroid/os/RemoteException; {:try_start_f2 .. :try_end_f9} :catch_fb

    goto/16 :goto_12

    .line 2984
    :catch_fb
    move-exception v8

    goto/16 :goto_12
.end method

.method private performLayout(Landroid/view/WindowManager$LayoutParams;II)V
    .registers 16
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "desiredWindowWidth"    # I
    .param p3, "desiredWindowHeight"    # I

    .prologue
    .line 2654
    const/4 v0, 0x0

    iput-boolean v0, p0, mLayoutRequested:Z

    .line 2655
    const/4 v0, 0x1

    iput-boolean v0, p0, mScrollMayChange:Z

    .line 2656
    const/4 v0, 0x1

    iput-boolean v0, p0, mInLayout:Z

    .line 2658
    iget-object v1, p0, mView:Landroid/view/View;

    .line 2664
    .local v1, "host":Landroid/view/View;
    const-wide/16 v2, 0x8

    const-string v0, "layout"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2666
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_14
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 2668
    const/4 v0, 0x0

    iput-boolean v0, p0, mInLayout:Z

    .line 2669
    iget-object v0, p0, mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2670
    .local v9, "numViewsRequestingLayout":I
    if-lez v9, :cond_a2

    .line 2675
    iget-object v0, p0, mLayoutRequesters:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 2677
    .local v10, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v10, :cond_a2

    .line 2681
    const/4 v0, 0x1

    iput-boolean v0, p0, mHandlingLayoutInLayoutRequest:Z

    .line 2684
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2685
    .local v8, "numValidRequests":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3b
    if-ge v7, v8, :cond_68

    .line 2686
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 2687
    .local v11, "view":Landroid/view/View;
    const-string v0, "View"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLayout() improperly called by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " during layout: running second layout pass"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    invoke-virtual {v11}, Landroid/view/View;->requestLayout()V

    .line 2685
    add-int/lit8 v7, v7, 0x1

    goto :goto_3b

    .line 2691
    .end local v11    # "view":Landroid/view/View;
    :cond_68
    iget-object v0, p0, mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    .line 2693
    const/4 v0, 0x1

    iput-boolean v0, p0, mInLayout:Z

    .line 2694
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 2696
    const/4 v0, 0x0

    iput-boolean v0, p0, mHandlingLayoutInLayoutRequest:Z

    .line 2700
    iget-object v0, p0, mLayoutRequesters:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 2701
    if-eqz v10, :cond_a2

    .line 2702
    move-object v6, v10

    .line 2704
    .local v6, "finalRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {}, getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v0

    new-instance v2, Landroid/view/ViewRootImpl$2;

    invoke-direct {v2, p0, v6}, Landroid/view/ViewRootImpl$2;-><init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl$RunQueue;->post(Ljava/lang/Runnable;)V
    :try_end_a2
    .catchall {:try_start_14 .. :try_end_a2} :catchall_ab

    .line 2721
    .end local v6    # "finalRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "i":I
    .end local v8    # "numValidRequests":I
    .end local v10    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_a2
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2723
    const/4 v0, 0x0

    iput-boolean v0, p0, mInLayout:Z

    .line 2724
    return-void

    .line 2721
    .end local v9    # "numViewsRequestingLayout":I
    :catchall_ab
    move-exception v0

    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private performMeasure(II)V
    .registers 16
    .param p1, "childWidthMeasureSpec"    # I
    .param p2, "childHeightMeasureSpec"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v9, 0x1

    const-wide/16 v10, 0x8

    .line 2556
    const-string/jumbo v7, "measure"

    invoke-static {v10, v11, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2558
    iget-object v7, p0, mContext:Landroid/content/Context;

    if-eqz v7, :cond_85

    .line 2561
    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v7, v9, :cond_1c

    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_85

    :cond_1c
    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gtz v7, :cond_28

    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    if-lez v7, :cond_85

    .line 2564
    :cond_28
    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    .line 2565
    .local v4, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iput-object v4, p0, mLastMeasuredMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 2566
    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v7

    if-ne v7, v9, :cond_85

    .line 2567
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 2568
    .local v5, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 2569
    .local v6, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2570
    .local v1, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 2571
    .local v2, "heightSpecSize":I
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "multiwindow_facade"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 2572
    .local v3, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    if-eqz v3, :cond_85

    .line 2573
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2574
    .local v0, "currStackBound":Landroid/graphics/Rect;
    if-eqz v0, :cond_85

    .line 2575
    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    if-lez v7, :cond_71

    .line 2576
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v6, v7, :cond_71

    .line 2577
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 2578
    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2581
    :cond_71
    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    if-lez v7, :cond_85

    .line 2582
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v2, v7, :cond_85

    .line 2583
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 2584
    invoke-static {v2, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2594
    .end local v0    # "currStackBound":Landroid/graphics/Rect;
    .end local v1    # "heightSpecMode":I
    .end local v2    # "heightSpecSize":I
    .end local v3    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v4    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v5    # "widthSpecMode":I
    .end local v6    # "widthSpecSize":I
    :cond_85
    :try_start_85
    iget-object v7, p0, mView:Landroid/view/View;

    invoke-virtual {v7, p1, p2}, Landroid/view/View;->measure(II)V
    :try_end_8a
    .catchall {:try_start_85 .. :try_end_8a} :catchall_8e

    .line 2596
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 2598
    return-void

    .line 2596
    :catchall_8e
    move-exception v7

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v7
.end method

.method private performTraversals()V
    .registers 81

    .prologue
    .line 1617
    move-object/from16 v0, p0

    iget-object v7, v0, mView:Landroid/view/View;

    .line 1625
    .local v7, "host":Landroid/view/View;
    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    iget-boolean v6, v0, mAdded:Z

    if-nez v6, :cond_d

    .line 2537
    :cond_c
    :goto_c
    return-void

    .line 1628
    :cond_d
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, mIsInTraversal:Z

    .line 1629
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, mWillDrawSoon:Z

    .line 1630
    const/16 v79, 0x0

    .line 1631
    .local v79, "windowSizeMayChange":Z
    const/16 v56, 0x0

    .line 1632
    .local v56, "newSurface":Z
    const/16 v70, 0x0

    .line 1633
    .local v70, "surfaceChanged":Z
    move-object/from16 v0, p0

    iget-object v8, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 1639
    .local v8, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, getHostVisibility()I

    move-result v73

    .line 1640
    .local v73, "viewVisibility":I
    move/from16 v62, v73

    .line 1644
    .local v62, "reportViewVisibility":I
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_3b

    .line 1645
    move-object/from16 v0, p0

    iget-boolean v6, v0, mWindowsExitAnimating:Z

    if-eqz v6, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v6, v0, mAppVisible:Z

    if-nez v6, :cond_3b

    .line 1646
    const/16 v73, 0x0

    .line 1649
    :cond_3b
    move-object/from16 v0, p0

    iget v6, v0, mReportedViewVisibility:I

    move/from16 v0, v62

    if-ne v6, v0, :cond_49

    move-object/from16 v0, p0

    iget-boolean v6, v0, mNewSurfaceNeeded:Z

    if-eqz v6, :cond_271

    :cond_49
    const/16 v63, 0x1

    .line 1652
    .local v63, "reportVisibilityChanged":Z
    :goto_4b
    move-object/from16 v0, p0

    iget v6, v0, mViewVisibility:I

    move/from16 v0, v73

    if-ne v6, v0, :cond_59

    move-object/from16 v0, p0

    iget-boolean v6, v0, mNewSurfaceNeeded:Z

    if-eqz v6, :cond_275

    :cond_59
    const/16 v74, 0x1

    .line 1655
    .local v74, "viewVisibilityChanged":Z
    :goto_5b
    const/16 v60, 0x0

    .line 1656
    .local v60, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v6, v0, mWindowAttributesChanged:Z

    if-eqz v6, :cond_6c

    .line 1657
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, mWindowAttributesChanged:Z

    .line 1658
    const/16 v70, 0x1

    .line 1659
    move-object/from16 v60, v8

    .line 1661
    :cond_6c
    move-object/from16 v0, p0

    iget-object v6, v0, mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v6}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v31

    .line 1662
    .local v31, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {v31 .. v31}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v12, v0, mLastInCompatMode:Z

    if-ne v6, v12, :cond_9f

    .line 1663
    move-object/from16 v60, v8

    .line 1664
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, mFullRedrawNeeded:Z

    .line 1665
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, mLayoutRequested:Z

    .line 1666
    move-object/from16 v0, p0

    iget-boolean v6, v0, mLastInCompatMode:Z

    if-eqz v6, :cond_279

    .line 1667
    move-object/from16 v0, v60

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v6, v6, -0x81

    move-object/from16 v0, v60

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1668
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, mLastInCompatMode:Z

    .line 1675
    :cond_9f
    :goto_9f
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, mWindowAttributesChangesFlag:I

    .line 1677
    move-object/from16 v0, p0

    iget-object v0, v0, mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    .line 1678
    .local v38, "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v6, v0, mFirst:Z

    if-eqz v6, :cond_2e9

    .line 1679
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, mFullRedrawNeeded:Z

    .line 1680
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, mLayoutRequested:Z

    .line 1682
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7de

    if-eq v6, v12, :cond_c6

    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7db

    if-ne v6, v12, :cond_28a

    .line 1685
    :cond_c6
    new-instance v65, Landroid/graphics/Point;

    invoke-direct/range {v65 .. v65}, Landroid/graphics/Point;-><init>()V

    .line 1686
    .local v65, "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v6, v0, mDisplay:Landroid/view/Display;

    move-object/from16 v0, v65

    invoke-virtual {v6, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1687
    move-object/from16 v0, v65

    iget v10, v0, Landroid/graphics/Point;->x:I

    .line 1688
    .local v10, "desiredWindowWidth":I
    move-object/from16 v0, v65

    iget v11, v0, Landroid/graphics/Point;->y:I

    .line 1717
    .end local v65    # "size":Landroid/graphics/Point;
    .local v11, "desiredWindowHeight":I
    :cond_dc
    :goto_dc
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x1

    iput-boolean v12, v6, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    .line 1718
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput-boolean v12, v6, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 1719
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    move/from16 v0, v73

    iput v0, v6, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 1720
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput-boolean v12, v6, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1722
    const/16 v63, 0x0

    .line 1724
    const/16 v74, 0x0

    .line 1726
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, v6, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move-object/from16 v0, p0

    iput v6, v0, mLastSystemUiVisibility:I

    .line 1728
    move-object/from16 v0, p0

    iget v6, v0, mViewLayoutDirectionInitial:I

    const/4 v12, 0x2

    if-ne v6, v12, :cond_119

    .line 1729
    move-object/from16 v0, p0

    iget-object v6, v0, mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1731
    :cond_119
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    invoke-virtual {v7, v6, v12}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 1732
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    .line 1733
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, dispatchApplyInsets(Landroid/view/View;)V

    .line 1748
    :cond_130
    :goto_130
    if-eqz v74, :cond_155

    .line 1749
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    move/from16 v0, v73

    iput v0, v6, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 1750
    move/from16 v0, v73

    invoke-virtual {v7, v0}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1751
    if-nez v73, :cond_147

    move-object/from16 v0, p0

    iget-boolean v6, v0, mNewSurfaceNeeded:Z

    if-eqz v6, :cond_14a

    .line 1752
    :cond_147
    invoke-virtual/range {p0 .. p0}, destroyHardwareResources()V

    .line 1754
    :cond_14a
    const/16 v6, 0x8

    move/from16 v0, v73

    if-ne v0, v6, :cond_155

    .line 1757
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, mHasHadWindowFocus:Z

    .line 1762
    :cond_155
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, v6, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-eqz v6, :cond_160

    .line 1763
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 1767
    :cond_160
    invoke-static {}, getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v12, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12}, Landroid/view/ViewRootImpl$RunQueue;->executeActions(Landroid/os/Handler;)V

    .line 1769
    const/16 v48, 0x0

    .line 1771
    .local v48, "insetsChanged":Z
    move-object/from16 v0, p0

    iget-boolean v6, v0, mLayoutRequested:Z

    if-eqz v6, :cond_30b

    move-object/from16 v0, p0

    iget-boolean v6, v0, mStopped:Z

    if-eqz v6, :cond_181

    move-object/from16 v0, p0

    iget-boolean v6, v0, mReportNextDraw:Z

    if-eqz v6, :cond_30b

    :cond_181
    const/16 v50, 0x1

    .line 1772
    .local v50, "layoutRequested":Z
    :goto_183
    const/16 v37, 0x0

    .line 1775
    .local v37, "forceRelayout":Z
    if-eqz v79, :cond_30f

    move-object/from16 v0, p0

    iget-boolean v6, v0, mStopped:Z

    if-eqz v6, :cond_30f

    move-object/from16 v0, p0

    iget-boolean v6, v0, mReportNextDraw:Z

    if-eqz v6, :cond_30f

    const/16 v66, 0x1

    .line 1776
    .local v66, "sizeChangedInStopped":Z
    :goto_195
    move-object/from16 v0, p0

    iget-boolean v6, v0, mStopped:Z

    if-eqz v6, :cond_313

    move-object/from16 v0, p0

    iget-boolean v6, v0, mLastWasImTarget:Z

    if-eqz v6, :cond_313

    move-object/from16 v0, p0

    iget-boolean v6, v0, mFullRedrawNeeded:Z

    if-eqz v6, :cond_313

    const/16 v46, 0x1

    .line 1777
    .local v46, "imeStateChangedInStopped":Z
    :goto_1a9
    move-object/from16 v0, p0

    iget-boolean v6, v0, mOrientationChanged:Z

    if-nez v6, :cond_1b1

    if-eqz v66, :cond_317

    :cond_1b1
    if-nez v62, :cond_317

    move-object/from16 v0, p0

    iget-object v6, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x2

    if-eq v6, v12, :cond_1c5

    move-object/from16 v0, p0

    iget-object v6, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x1

    if-ne v6, v12, :cond_317

    :cond_1c5
    const/16 v37, 0x1

    .line 1781
    :goto_1c7
    move-object/from16 v0, p0

    iget-boolean v6, v0, mLayoutRequested:Z

    if-eqz v6, :cond_31b

    move-object/from16 v0, p0

    iget-boolean v6, v0, mStopped:Z

    if-eqz v6, :cond_1d5

    if-eqz v37, :cond_31b

    :cond_1d5
    const/16 v50, 0x1

    .line 1782
    :goto_1d7
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, mOrientationChanged:Z

    .line 1785
    if-eqz v50, :cond_20e

    .line 1787
    move-object/from16 v0, p0

    iget-object v6, v0, mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1789
    .local v9, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-boolean v6, v0, mFirst:Z

    if-eqz v6, :cond_322

    .line 1792
    move-object/from16 v0, p0

    iget-object v12, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-boolean v6, v0, mAddedTouchMode:Z

    if-nez v6, :cond_31f

    const/4 v6, 0x1

    :goto_1fb
    iput-boolean v6, v12, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 1793
    move-object/from16 v0, p0

    iget-boolean v6, v0, mAddedTouchMode:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, ensureTouchModeLocally(Z)Z

    :cond_206
    :goto_206
    move-object/from16 v6, p0

    .line 1841
    invoke-direct/range {v6 .. v11}, measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v6

    or-int v79, v79, v6

    .line 1845
    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_20e
    invoke-direct/range {p0 .. p0}, collectViewAttributes()Z

    move-result v6

    if-eqz v6, :cond_216

    .line 1846
    move-object/from16 v60, v8

    .line 1848
    :cond_216
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    if-eqz v6, :cond_227

    .line 1849
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput-boolean v12, v6, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 1850
    move-object/from16 v60, v8

    .line 1853
    :cond_227
    move-object/from16 v0, p0

    iget-boolean v6, v0, mFirst:Z

    if-nez v6, :cond_235

    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    if-eqz v6, :cond_436

    .line 1854
    :cond_235
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput-boolean v12, v6, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 1855
    move-object/from16 v0, p0

    iget v6, v0, mSoftInputMode:I

    and-int/lit16 v0, v6, 0xf0

    move/from16 v64, v0

    .line 1859
    .local v64, "resizeMode":I
    if-nez v64, :cond_436

    .line 1860
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 1861
    .local v24, "N":I
    const/16 v43, 0x0

    .local v43, "i":I
    :goto_252
    move/from16 v0, v43

    move/from16 v1, v24

    if-ge v0, v1, :cond_420

    .line 1862
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_26e

    .line 1863
    const/16 v64, 0x10

    .line 1861
    :cond_26e
    add-int/lit8 v43, v43, 0x1

    goto :goto_252

    .line 1649
    .end local v10    # "desiredWindowWidth":I
    .end local v11    # "desiredWindowHeight":I
    .end local v24    # "N":I
    .end local v31    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v37    # "forceRelayout":Z
    .end local v38    # "frame":Landroid/graphics/Rect;
    .end local v43    # "i":I
    .end local v46    # "imeStateChangedInStopped":Z
    .end local v48    # "insetsChanged":Z
    .end local v50    # "layoutRequested":Z
    .end local v60    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v63    # "reportVisibilityChanged":Z
    .end local v64    # "resizeMode":I
    .end local v66    # "sizeChangedInStopped":Z
    .end local v74    # "viewVisibilityChanged":Z
    :cond_271
    const/16 v63, 0x0

    goto/16 :goto_4b

    .line 1652
    .restart local v63    # "reportVisibilityChanged":Z
    :cond_275
    const/16 v74, 0x0

    goto/16 :goto_5b

    .line 1670
    .restart local v31    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v60    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v74    # "viewVisibilityChanged":Z
    :cond_279
    move-object/from16 v0, v60

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v6, v6, 0x80

    move-object/from16 v0, v60

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1671
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, mLastInCompatMode:Z

    goto/16 :goto_9f

    .line 1690
    .restart local v38    # "frame":Landroid/graphics/Rect;
    :cond_28a
    move-object/from16 v0, p0

    iget-object v6, v0, mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v59

    .line 1692
    .local v59, "packageMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v59

    iget v10, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1693
    .restart local v10    # "desiredWindowWidth":I
    move-object/from16 v0, v59

    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1696
    .restart local v11    # "desiredWindowHeight":I
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    if-eqz v6, :cond_dc

    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x3eb

    if-eq v6, v12, :cond_dc

    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x2

    if-eq v6, v12, :cond_dc

    .line 1699
    invoke-virtual/range {p0 .. p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v55

    .line 1700
    .local v55, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v55, :cond_dc

    invoke-virtual/range {v55 .. v55}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    const/4 v12, 0x1

    if-ne v6, v12, :cond_dc

    .line 1701
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    const-string/jumbo v12, "multiwindow_facade"

    invoke-virtual {v6, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 1702
    .local v54, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    if-eqz v54, :cond_dc

    .line 1703
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v69

    .line 1704
    .local v69, "stackBounds":Landroid/graphics/Rect;
    if-eqz v69, :cond_dc

    .line 1705
    invoke-virtual/range {v69 .. v69}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 1706
    invoke-virtual/range {v69 .. v69}, Landroid/graphics/Rect;->height()I

    move-result v11

    goto/16 :goto_dc

    .line 1737
    .end local v10    # "desiredWindowWidth":I
    .end local v11    # "desiredWindowHeight":I
    .end local v54    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v55    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v59    # "packageMetrics":Landroid/util/DisplayMetrics;
    .end local v69    # "stackBounds":Landroid/graphics/Rect;
    :cond_2e9
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 1738
    .restart local v10    # "desiredWindowWidth":I
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 1739
    .restart local v11    # "desiredWindowHeight":I
    move-object/from16 v0, p0

    iget v6, v0, mWidth:I

    if-ne v10, v6, :cond_2fd

    move-object/from16 v0, p0

    iget v6, v0, mHeight:I

    if-eq v11, v6, :cond_130

    .line 1742
    :cond_2fd
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, mFullRedrawNeeded:Z

    .line 1743
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, mLayoutRequested:Z

    .line 1744
    const/16 v79, 0x1

    goto/16 :goto_130

    .line 1771
    .restart local v48    # "insetsChanged":Z
    :cond_30b
    const/16 v50, 0x0

    goto/16 :goto_183

    .line 1775
    .restart local v37    # "forceRelayout":Z
    .restart local v50    # "layoutRequested":Z
    :cond_30f
    const/16 v66, 0x0

    goto/16 :goto_195

    .line 1776
    .restart local v66    # "sizeChangedInStopped":Z
    :cond_313
    const/16 v46, 0x0

    goto/16 :goto_1a9

    .line 1777
    .restart local v46    # "imeStateChangedInStopped":Z
    :cond_317
    const/16 v37, 0x0

    goto/16 :goto_1c7

    .line 1781
    :cond_31b
    const/16 v50, 0x0

    goto/16 :goto_1d7

    .line 1792
    .restart local v9    # "res":Landroid/content/res/Resources;
    :cond_31f
    const/4 v6, 0x0

    goto/16 :goto_1fb

    .line 1795
    :cond_322
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_334

    .line 1796
    const/16 v48, 0x1

    .line 1798
    :cond_334
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_346

    .line 1799
    const/16 v48, 0x1

    .line 1801
    :cond_346
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b0

    .line 1802
    move-object/from16 v0, p0

    iget-object v6, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x2

    if-ne v6, v12, :cond_40f

    move-object/from16 v0, p0

    iget-object v6, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_40f

    move-object/from16 v0, p0

    iget-object v6, v0, mView:Landroid/view/View;

    if-eqz v6, :cond_40f

    move-object/from16 v0, p0

    iget-object v6, v0, mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getZ()F

    move-result v6

    const/4 v12, 0x0

    cmpl-float v6, v6, v12

    if-lez v6, :cond_40f

    .line 1807
    const-string v6, "ViewRootImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignore stableInsets changed, SI="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v13, v13, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " PSI="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    :cond_3b0
    :goto_3b0
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3cd

    .line 1814
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1818
    :cond_3cd
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3df

    .line 1819
    const/16 v48, 0x1

    .line 1821
    :cond_3df
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v12, -0x2

    if-eq v6, v12, :cond_3e9

    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v12, -0x2

    if-ne v6, v12, :cond_206

    .line 1823
    :cond_3e9
    const/16 v79, 0x1

    .line 1825
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7de

    if-eq v6, v12, :cond_3f7

    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7db

    if-ne v6, v12, :cond_412

    .line 1828
    :cond_3f7
    new-instance v65, Landroid/graphics/Point;

    invoke-direct/range {v65 .. v65}, Landroid/graphics/Point;-><init>()V

    .line 1829
    .restart local v65    # "size":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v6, v0, mDisplay:Landroid/view/Display;

    move-object/from16 v0, v65

    invoke-virtual {v6, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1830
    move-object/from16 v0, v65

    iget v10, v0, Landroid/graphics/Point;->x:I

    .line 1831
    move-object/from16 v0, v65

    iget v11, v0, Landroid/graphics/Point;->y:I

    .line 1832
    goto/16 :goto_206

    .line 1810
    .end local v65    # "size":Landroid/graphics/Point;
    :cond_40f
    const/16 v48, 0x1

    goto :goto_3b0

    .line 1833
    :cond_412
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v59

    .line 1834
    .restart local v59    # "packageMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, v59

    iget v10, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1835
    move-object/from16 v0, v59

    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto/16 :goto_206

    .line 1866
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v59    # "packageMetrics":Landroid/util/DisplayMetrics;
    .restart local v24    # "N":I
    .restart local v43    # "i":I
    .restart local v64    # "resizeMode":I
    :cond_420
    if-nez v64, :cond_424

    .line 1867
    const/16 v64, 0x20

    .line 1869
    :cond_424
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v6, v6, 0xf0

    move/from16 v0, v64

    if-eq v6, v0, :cond_436

    .line 1871
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v6, v6, -0xf1

    or-int v6, v6, v64

    iput v6, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1874
    move-object/from16 v60, v8

    .line 1879
    .end local v24    # "N":I
    .end local v43    # "i":I
    .end local v64    # "resizeMode":I
    :cond_436
    if-eqz v60, :cond_45d

    .line 1880
    iget v6, v7, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_44d

    .line 1881
    move-object/from16 v0, v60

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v6}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v6

    if-nez v6, :cond_44d

    .line 1882
    const/4 v6, -0x3

    move-object/from16 v0, v60

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1885
    :cond_44d
    move-object/from16 v0, p0

    iget-object v12, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v60

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v13, 0x2000000

    and-int/2addr v6, v13

    if-eqz v6, :cond_848

    const/4 v6, 0x1

    :goto_45b
    iput-boolean v6, v12, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    .line 1889
    :cond_45d
    move-object/from16 v0, p0

    iget-boolean v6, v0, mApplyInsetsRequested:Z

    if-eqz v6, :cond_497

    .line 1890
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, mApplyInsetsRequested:Z

    .line 1891
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    move-object/from16 v0, p0

    iput-boolean v6, v0, mLastOverscanRequested:Z

    .line 1892
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, dispatchApplyInsets(Landroid/view/View;)V

    .line 1893
    move-object/from16 v0, p0

    iget-boolean v6, v0, mLayoutRequested:Z

    if-eqz v6, :cond_497

    .line 1897
    move-object/from16 v0, p0

    iget-object v6, v0, mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v12, p0

    move-object v13, v7

    move-object v14, v8

    move/from16 v16, v10

    move/from16 v17, v11

    invoke-direct/range {v12 .. v17}, measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v6

    or-int v79, v79, v6

    .line 1903
    :cond_497
    if-eqz v50, :cond_49e

    .line 1907
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, mLayoutRequested:Z

    .line 1910
    :cond_49e
    if-eqz v50, :cond_84b

    if-eqz v79, :cond_84b

    move-object/from16 v0, p0

    iget v6, v0, mWidth:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    if-ne v6, v12, :cond_4e0

    move-object/from16 v0, p0

    iget v6, v0, mHeight:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    if-ne v6, v12, :cond_4e0

    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v12, -0x2

    if-ne v6, v12, :cond_4cb

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ge v6, v10, :cond_4cb

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->width()I

    move-result v6

    move-object/from16 v0, p0

    iget v12, v0, mWidth:I

    if-ne v6, v12, :cond_4e0

    :cond_4cb
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v12, -0x2

    if-ne v6, v12, :cond_84b

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ge v6, v11, :cond_84b

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p0

    iget v12, v0, mHeight:I

    if-eq v6, v12, :cond_84b

    :cond_4e0
    const/16 v78, 0x1

    .line 1918
    .local v78, "windowShouldResize":Z
    :goto_4e2
    const/16 v52, 0x0

    .line 1919
    .local v52, "maximizing":Z
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    if-eqz v6, :cond_515

    .line 1920
    invoke-virtual/range {p0 .. p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v55

    .line 1921
    .restart local v55    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v55, :cond_515

    move-object/from16 v0, p0

    iget-object v6, v0, mLastPerformedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v6

    if-nez v6, :cond_515

    .line 1923
    invoke-virtual/range {v55 .. v55}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v12, v0, mLastPerformedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v12

    if-eq v6, v12, :cond_84f

    .line 1925
    const/16 v78, 0x1

    .line 1932
    :cond_50c
    :goto_50c
    move-object/from16 v0, p0

    iget-object v6, v0, mLastPerformedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1939
    .end local v55    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_515
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    move-result v6

    if-nez v6, :cond_529

    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    if-eqz v6, :cond_869

    :cond_529
    const/16 v32, 0x1

    .line 1943
    .local v32, "computesInternalInsets":Z
    :goto_52b
    const/16 v49, 0x0

    .line 1944
    .local v49, "insetsPending":Z
    const/16 v61, 0x0

    .line 1946
    .local v61, "relayoutResult":I
    move-object/from16 v0, p0

    iget-boolean v6, v0, mFirst:Z

    if-nez v6, :cond_547

    if-nez v78, :cond_547

    if-nez v48, :cond_547

    if-nez v63, :cond_547

    if-nez v60, :cond_547

    if-nez v37, :cond_547

    if-nez v46, :cond_547

    move-object/from16 v0, p0

    iget-boolean v6, v0, mNewScaleFactorNeeded:Z

    if-eqz v6, :cond_d77

    .line 1952
    :cond_547
    if-nez v62, :cond_555

    .line 1962
    if-eqz v32, :cond_86d

    move-object/from16 v0, p0

    iget-boolean v6, v0, mFirst:Z

    if-nez v6, :cond_553

    if-eqz v63, :cond_86d

    :cond_553
    const/16 v49, 0x1

    .line 1966
    :cond_555
    :goto_555
    move-object/from16 v0, p0

    iget-object v6, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v6, :cond_569

    .line 1967
    move-object/from16 v0, p0

    iget-object v6, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v6, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1968
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, mDrawingAllowed:Z

    .line 1971
    :cond_569
    const/16 v42, 0x0

    .line 1972
    .local v42, "hwInitialized":Z
    const/16 v33, 0x0

    .line 1973
    .local v33, "contentInsetsChanged":Z
    move-object/from16 v0, p0

    iget-object v6, v0, mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v39

    .line 1976
    .local v39, "hadSurface":Z
    :try_start_575
    move-object/from16 v0, p0

    iget-boolean v6, v0, mResizeAnimating:Z

    if-nez v6, :cond_5e0

    .line 1982
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v6, :cond_5b3

    .line 1986
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v12, v0, mSurface:Landroid/view/Surface;

    invoke-virtual {v6, v12}, Landroid/view/HardwareRenderer;->pauseSurface(Landroid/view/Surface;)Z

    move-result v6

    if-eqz v6, :cond_5a8

    .line 1989
    move-object/from16 v0, p0

    iget-object v6, v0, mDirty:Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, mWidth:I

    move-object/from16 v0, p0

    iget v0, v0, mHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v6, v12, v13, v14, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1991
    :cond_5a8
    move-object/from16 v0, p0

    iget-object v6, v0, mChoreographer:Landroid/view/Choreographer;

    iget-object v6, v6, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    const-wide/16 v12, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/view/FrameInfo;->addFlags(J)V

    .line 1994
    :cond_5b3
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v73

    move/from16 v3, v49

    move/from16 v4, v62

    invoke-direct {v0, v1, v2, v3, v4}, relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZI)I

    move-result v61

    .line 2005
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->seq:I

    if-eqz v6, :cond_5e0

    .line 2008
    move-object/from16 v0, p0

    iget-object v12, v0, mPendingConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-boolean v6, v0, mFirst:Z

    if-nez v6, :cond_871

    const/4 v6, 0x1

    :goto_5d4
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 2009
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingConfiguration:Landroid/content/res/Configuration;

    const/4 v12, 0x0

    iput v12, v6, Landroid/content/res/Configuration;->seq:I

    .line 2013
    :cond_5e0
    move-object/from16 v0, p0

    iget-object v6, v0, mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->getGenerationId()I

    move-result v71

    .line 2014
    .local v71, "surfaceGenerationId":I
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_874

    const/16 v58, 0x1

    .line 2016
    .local v58, "overscanInsetsChanged":Z
    :goto_5fa
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_878

    const/16 v33, 0x1

    .line 2018
    :goto_60c
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_87c

    const/16 v75, 0x1

    .line 2020
    .local v75, "visibleInsetsChanged":Z
    :goto_61e
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_880

    const/16 v68, 0x1

    .line 2022
    .local v68, "stableInsetsChanged":Z
    :goto_630
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_884

    const/16 v57, 0x1

    .line 2023
    .local v57, "outsetsChanged":Z
    :goto_642
    if-eqz v33, :cond_6a7

    .line 2024
    move-object/from16 v0, p0

    iget v6, v0, mWidth:I

    if-lez v6, :cond_69a

    move-object/from16 v0, p0

    iget v6, v0, mHeight:I

    if-lez v6, :cond_69a

    if-eqz v8, :cond_69a

    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v6, v12

    and-int/lit16 v6, v6, 0x600

    if-nez v6, :cond_69a

    move-object/from16 v0, p0

    iget-object v6, v0, mSurface:Landroid/view/Surface;

    if-eqz v6, :cond_69a

    move-object/from16 v0, p0

    iget-object v6, v0, mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_69a

    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mTurnOffWindowResizeAnim:Z

    if-nez v6, :cond_69a

    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v6, :cond_69a

    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v6}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_69a

    if-eqz v8, :cond_69a

    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v6}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v6

    if-nez v6, :cond_69a

    move-object/from16 v0, p0

    iget-boolean v6, v0, mBlockResizeBuffer:Z

    if-nez v6, :cond_69a

    .line 2034
    invoke-virtual/range {p0 .. p0}, disposeResizeBuffer()V

    .line 2086
    :cond_69a
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2090
    :cond_6a7
    if-eqz v58, :cond_6b8

    .line 2091
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, mPendingOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2095
    const/16 v33, 0x1

    .line 2097
    :cond_6b8
    if-eqz v68, :cond_6c9

    .line 2098
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2102
    const/16 v33, 0x1

    .line 2104
    :cond_6c9
    if-nez v33, :cond_6eb

    move-object/from16 v0, p0

    iget v6, v0, mLastSystemUiVisibility:I

    move-object/from16 v0, p0

    iget-object v12, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v12, v12, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-ne v6, v12, :cond_6eb

    move-object/from16 v0, p0

    iget-boolean v6, v0, mApplyInsetsRequested:Z

    if-nez v6, :cond_6eb

    move-object/from16 v0, p0

    iget-boolean v6, v0, mLastOverscanRequested:Z

    move-object/from16 v0, p0

    iget-object v12, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v12, v12, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    if-ne v6, v12, :cond_6eb

    if-eqz v57, :cond_716

    .line 2108
    :cond_6eb
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, v6, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move-object/from16 v0, p0

    iput v6, v0, mLastSystemUiVisibility:I

    .line 2109
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    move-object/from16 v0, p0

    iput-boolean v6, v0, mLastOverscanRequested:Z

    .line 2110
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, mPendingOutsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2111
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, mApplyInsetsRequested:Z

    .line 2112
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, dispatchApplyInsets(Landroid/view/View;)V

    .line 2114
    :cond_716
    if-eqz v75, :cond_725

    .line 2115
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2120
    :cond_725
    if-nez v39, :cond_895

    .line 2121
    move-object/from16 v0, p0

    iget-object v6, v0, mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_78d

    .line 2129
    const/16 v56, 0x1

    .line 2130
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, mFullRedrawNeeded:Z

    .line 2131
    move-object/from16 v0, p0

    iget-object v6, v0, mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v6}, Landroid/graphics/Region;->setEmpty()V

    .line 2134
    sget v6, sBufferCount:I

    const/4 v12, -0x1

    if-eq v6, v12, :cond_74d

    .line 2135
    move-object/from16 v0, p0

    iget-object v6, v0, mSurface:Landroid/view/Surface;

    sget v12, sBufferCount:I

    invoke-virtual {v6, v12}, Landroid/view/Surface;->setBufferCount(I)V

    .line 2139
    :cond_74d
    sget-wide v12, sDTSFactor:D

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v12, v20

    if-eqz v6, :cond_75e

    .line 2140
    move-object/from16 v0, p0

    iget-object v6, v0, mSurface:Landroid/view/Surface;

    sget-wide v12, sDTSFactor:D

    invoke-virtual {v6, v12, v13}, Landroid/view/Surface;->setDTSFactor(D)V

    .line 2147
    :cond_75e
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;
    :try_end_764
    .catch Landroid/os/RemoteException; {:try_start_575 .. :try_end_764} :catch_892

    if-eqz v6, :cond_78d

    .line 2149
    :try_start_766
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v13, v0, mSurface:Landroid/view/Surface;

    sget-boolean v14, sIsDcsEnabledApp:Z

    sget v15, sDcsFormat:I

    sget-wide v16, sDssFactor:D

    invoke-virtual/range {v12 .. v17}, Landroid/view/HardwareRenderer;->initialize(Landroid/view/Surface;ZID)Z

    move-result v42

    .line 2154
    if-eqz v42, :cond_78d

    iget v6, v7, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x200

    if-nez v6, :cond_78d

    sget-boolean v6, sRendererDemoted:Z

    if-nez v6, :cond_78d

    .line 2159
    move-object/from16 v0, p0

    iget-object v6, v0, mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->allocateBuffers()V
    :try_end_78d
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_766 .. :try_end_78d} :catch_888
    .catch Landroid/os/RemoteException; {:try_start_766 .. :try_end_78d} :catch_892

    .line 2203
    .end local v57    # "outsetsChanged":Z
    .end local v58    # "overscanInsetsChanged":Z
    .end local v68    # "stableInsetsChanged":Z
    .end local v71    # "surfaceGenerationId":I
    .end local v75    # "visibleInsetsChanged":Z
    :cond_78d
    :goto_78d
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v38

    iget v12, v0, Landroid/graphics/Rect;->left:I

    iput v12, v6, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 2204
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v38

    iget v12, v0, Landroid/graphics/Rect;->top:I

    iput v12, v6, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 2209
    move-object/from16 v0, p0

    iget v6, v0, mWidth:I

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->width()I

    move-result v12

    if-ne v6, v12, :cond_7b5

    move-object/from16 v0, p0

    iget v6, v0, mHeight:I

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v12

    if-eq v6, v12, :cond_7c5

    .line 2210
    :cond_7b5
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->width()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, mWidth:I

    .line 2211
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, mHeight:I

    .line 2214
    :cond_7c5
    move-object/from16 v0, p0

    iget-object v6, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v6, :cond_9ac

    .line 2216
    move-object/from16 v0, p0

    iget-object v6, v0, mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_7df

    .line 2219
    move-object/from16 v0, p0

    iget-object v6, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget-object v12, v0, mSurface:Landroid/view/Surface;

    iput-object v12, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    .line 2221
    :cond_7df
    move-object/from16 v0, p0

    iget-object v6, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget v12, v0, mWidth:I

    move-object/from16 v0, p0

    iget v13, v0, mHeight:I

    invoke-virtual {v6, v12, v13}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 2222
    move-object/from16 v0, p0

    iget-object v6, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v6, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2223
    move-object/from16 v0, p0

    iget-object v6, v0, mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_d08

    .line 2224
    if-nez v39, :cond_933

    .line 2225
    move-object/from16 v0, p0

    iget-object v6, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 2227
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, mIsCreating:Z

    .line 2228
    move-object/from16 v0, p0

    iget-object v6, v0, mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v12, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v6, v12}, Landroid/view/SurfaceHolder$Callback2;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 2229
    const-string v6, "ViewSystem"

    const-string v12, "ViewRootImpl >> surfaceCreated"

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    move-object/from16 v0, p0

    iget-object v6, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v27

    .line 2231
    .local v27, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v27, :cond_931

    .line 2232
    move-object/from16 v25, v27

    .local v25, "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v51, v0

    .local v51, "len$":I
    const/16 v44, 0x0

    .local v44, "i$":I
    :goto_834
    move/from16 v0, v44

    move/from16 v1, v51

    if-ge v0, v1, :cond_931

    aget-object v26, v25, v44

    .line 2233
    .local v26, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v6, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 2232
    add-int/lit8 v44, v44, 0x1

    goto :goto_834

    .line 1885
    .end local v25    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v26    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v27    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v32    # "computesInternalInsets":Z
    .end local v33    # "contentInsetsChanged":Z
    .end local v39    # "hadSurface":Z
    .end local v42    # "hwInitialized":Z
    .end local v44    # "i$":I
    .end local v49    # "insetsPending":Z
    .end local v51    # "len$":I
    .end local v52    # "maximizing":Z
    .end local v61    # "relayoutResult":I
    .end local v78    # "windowShouldResize":Z
    :cond_848
    const/4 v6, 0x0

    goto/16 :goto_45b

    .line 1910
    :cond_84b
    const/16 v78, 0x0

    goto/16 :goto_4e2

    .line 1926
    .restart local v52    # "maximizing":Z
    .restart local v55    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v78    # "windowShouldResize":Z
    :cond_84f
    const/4 v6, 0x4

    move-object/from16 v0, v55

    invoke-virtual {v0, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_50c

    move-object/from16 v0, p0

    iget-object v6, v0, mLastPerformedMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x4

    invoke-virtual {v6, v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_50c

    .line 1929
    const/16 v78, 0x1

    .line 1930
    const/16 v52, 0x1

    goto/16 :goto_50c

    .line 1939
    .end local v55    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_869
    const/16 v32, 0x0

    goto/16 :goto_52b

    .line 1962
    .restart local v32    # "computesInternalInsets":Z
    .restart local v49    # "insetsPending":Z
    .restart local v61    # "relayoutResult":I
    :cond_86d
    const/16 v49, 0x0

    goto/16 :goto_555

    .line 2008
    .restart local v33    # "contentInsetsChanged":Z
    .restart local v39    # "hadSurface":Z
    .restart local v42    # "hwInitialized":Z
    :cond_871
    const/4 v6, 0x0

    goto/16 :goto_5d4

    .line 2014
    .restart local v71    # "surfaceGenerationId":I
    :cond_874
    const/16 v58, 0x0

    goto/16 :goto_5fa

    .line 2016
    .restart local v58    # "overscanInsetsChanged":Z
    :cond_878
    const/16 v33, 0x0

    goto/16 :goto_60c

    .line 2018
    :cond_87c
    const/16 v75, 0x0

    goto/16 :goto_61e

    .line 2020
    .restart local v75    # "visibleInsetsChanged":Z
    :cond_880
    const/16 v68, 0x0

    goto/16 :goto_630

    .line 2022
    .restart local v68    # "stableInsetsChanged":Z
    :cond_884
    const/16 v57, 0x0

    goto/16 :goto_642

    .line 2162
    .restart local v57    # "outsetsChanged":Z
    :catch_888
    move-exception v35

    .line 2163
    .local v35, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_889
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    goto/16 :goto_c

    .line 2197
    .end local v35    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v57    # "outsetsChanged":Z
    .end local v58    # "overscanInsetsChanged":Z
    .end local v68    # "stableInsetsChanged":Z
    .end local v71    # "surfaceGenerationId":I
    .end local v75    # "visibleInsetsChanged":Z
    :catch_892
    move-exception v6

    goto/16 :goto_78d

    .line 2168
    .restart local v57    # "outsetsChanged":Z
    .restart local v58    # "overscanInsetsChanged":Z
    .restart local v68    # "stableInsetsChanged":Z
    .restart local v71    # "surfaceGenerationId":I
    .restart local v75    # "visibleInsetsChanged":Z
    :cond_895
    move-object/from16 v0, p0

    iget-object v6, v0, mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-nez v6, :cond_8f9

    .line 2171
    move-object/from16 v0, p0

    iget-object v6, v0, mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_8ac

    .line 2172
    move-object/from16 v0, p0

    iget-object v6, v0, mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->clear()V

    .line 2174
    :cond_8ac
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, mCurScrollY:I

    move-object/from16 v0, p0

    iput v6, v0, mScrollY:I

    .line 2175
    move-object/from16 v0, p0

    iget-object v6, v0, mView:Landroid/view/View;

    instance-of v6, v6, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v6, :cond_8ca

    .line 2176
    move-object/from16 v0, p0

    iget-object v6, v0, mView:Landroid/view/View;

    check-cast v6, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object/from16 v0, p0

    iget v12, v0, mCurScrollY:I

    invoke-interface {v6, v12}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    .line 2178
    :cond_8ca
    move-object/from16 v0, p0

    iget-object v6, v0, mScroller:Landroid/widget/Scroller;

    if-eqz v6, :cond_8d7

    .line 2179
    move-object/from16 v0, p0

    iget-object v6, v0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2181
    :cond_8d7
    invoke-virtual/range {p0 .. p0}, disposeResizeBuffer()V

    .line 2183
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v6, :cond_78d

    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v6}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_78d

    .line 2185
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v6}, Landroid/view/HardwareRenderer;->destroy()V

    goto/16 :goto_78d

    .line 2187
    :cond_8f9
    move-object/from16 v0, p0

    iget-object v6, v0, mSurface:Landroid/view/Surface;

    invoke-virtual {v6}, Landroid/view/Surface;->getGenerationId()I

    move-result v6

    move/from16 v0, v71

    if-eq v0, v6, :cond_78d

    move-object/from16 v0, p0

    iget-object v6, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v6, :cond_78d

    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v6, :cond_78d

    .line 2189
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, mFullRedrawNeeded:Z
    :try_end_918
    .catch Landroid/os/RemoteException; {:try_start_889 .. :try_end_918} :catch_892

    .line 2191
    :try_start_918
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v12, v0, mSurface:Landroid/view/Surface;

    invoke-virtual {v6, v12}, Landroid/view/HardwareRenderer;->updateSurface(Landroid/view/Surface;)V
    :try_end_925
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_918 .. :try_end_925} :catch_927
    .catch Landroid/os/RemoteException; {:try_start_918 .. :try_end_925} :catch_892

    goto/16 :goto_78d

    .line 2192
    :catch_927
    move-exception v35

    .line 2193
    .restart local v35    # "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_928
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    :try_end_92f
    .catch Landroid/os/RemoteException; {:try_start_928 .. :try_end_92f} :catch_892

    goto/16 :goto_c

    .line 2236
    .end local v35    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v57    # "outsetsChanged":Z
    .end local v58    # "overscanInsetsChanged":Z
    .end local v68    # "stableInsetsChanged":Z
    .end local v71    # "surfaceGenerationId":I
    .end local v75    # "visibleInsetsChanged":Z
    .restart local v27    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_931
    const/16 v70, 0x1

    .line 2238
    .end local v27    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_933
    if-eqz v70, :cond_9a7

    .line 2239
    move-object/from16 v0, p0

    iget-object v6, v0, mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v12, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v13, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    move-object/from16 v0, p0

    iget v14, v0, mWidth:I

    move-object/from16 v0, p0

    iget v0, v0, mHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-interface {v6, v12, v13, v14, v0}, Landroid/view/SurfaceHolder$Callback2;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 2241
    const-string v6, "ViewSystem"

    const-string v12, "ViewRootImpl >> surfaceChanged W=%d, H=%d)"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, mWidth:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, mHeight:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    move-object/from16 v0, p0

    iget-object v6, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v27

    .line 2243
    .restart local v27    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v27, :cond_9a7

    .line 2244
    move-object/from16 v25, v27

    .restart local v25    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v51, v0

    .restart local v51    # "len$":I
    const/16 v44, 0x0

    .restart local v44    # "i$":I
    :goto_989
    move/from16 v0, v44

    move/from16 v1, v51

    if-ge v0, v1, :cond_9a7

    aget-object v26, v25, v44

    .line 2245
    .restart local v26    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v6, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    move-object/from16 v0, p0

    iget v13, v0, mWidth:I

    move-object/from16 v0, p0

    iget v14, v0, mHeight:I

    move-object/from16 v0, v26

    invoke-interface {v0, v6, v12, v13, v14}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 2244
    add-int/lit8 v44, v44, 0x1

    goto :goto_989

    .line 2250
    .end local v25    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v26    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v27    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v44    # "i$":I
    .end local v51    # "len$":I
    :cond_9a7
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, mIsCreating:Z

    .line 2270
    :cond_9ac
    :goto_9ac
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v40, v0

    .line 2271
    .local v40, "hardwareRenderer":Landroid/view/HardwareRenderer;
    if-eqz v40, :cond_9fb

    invoke-virtual/range {v40 .. v40}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_9fb

    .line 2272
    if-nez v52, :cond_9d4

    if-nez v42, :cond_9d4

    move-object/from16 v0, p0

    iget v6, v0, mWidth:I

    invoke-virtual/range {v40 .. v40}, Landroid/view/HardwareRenderer;->getWidth()I

    move-result v12

    if-ne v6, v12, :cond_9d4

    move-object/from16 v0, p0

    iget v6, v0, mHeight:I

    invoke-virtual/range {v40 .. v40}, Landroid/view/HardwareRenderer;->getHeight()I

    move-result v12

    if-eq v6, v12, :cond_9fb

    .line 2275
    :cond_9d4
    move-object/from16 v0, p0

    iget v6, v0, mWidth:I

    move-object/from16 v0, p0

    iget v12, v0, mHeight:I

    move-object/from16 v0, p0

    iget-object v13, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v14, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v14, v14, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v12, v13, v14}, Landroid/view/HardwareRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    .line 2277
    if-nez v42, :cond_9fb

    .line 2278
    move-object/from16 v0, p0

    iget-object v6, v0, mSurface:Landroid/view/Surface;

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Landroid/view/HardwareRenderer;->invalidate(Landroid/view/Surface;)V

    .line 2279
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, mFullRedrawNeeded:Z

    .line 2284
    :cond_9fb
    move-object/from16 v0, p0

    iget-boolean v6, v0, mStopped:Z

    if-eqz v6, :cond_a09

    move-object/from16 v0, p0

    iget-boolean v6, v0, mReportNextDraw:Z

    if-nez v6, :cond_a09

    if-eqz v37, :cond_aa2

    .line 2285
    :cond_a09
    and-int/lit8 v6, v61, 0x1

    if-eqz v6, :cond_d74

    const/4 v6, 0x1

    :goto_a0e
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, ensureTouchModeLocally(Z)Z

    move-result v36

    .line 2287
    .local v36, "focusChangedDueToTouchMode":Z
    if-nez v36, :cond_a32

    move-object/from16 v0, p0

    iget v6, v0, mWidth:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    if-ne v6, v12, :cond_a32

    move-object/from16 v0, p0

    iget v6, v0, mHeight:I

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    if-ne v6, v12, :cond_a32

    if-nez v33, :cond_a32

    move-object/from16 v0, p0

    iget-boolean v6, v0, mNewScaleFactorNeeded:Z

    if-eqz v6, :cond_aa2

    .line 2290
    :cond_a32
    move-object/from16 v0, p0

    iget v6, v0, mWidth:I

    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v6, v12}, getRootMeasureSpec(II)I

    move-result v30

    .line 2291
    .local v30, "childWidthMeasureSpec":I
    move-object/from16 v0, p0

    iget v6, v0, mHeight:I

    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v6, v12}, getRootMeasureSpec(II)I

    move-result v29

    .line 2300
    .local v29, "childHeightMeasureSpec":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, performMeasure(II)V

    .line 2305
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v76

    .line 2306
    .local v76, "width":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v41

    .line 2307
    .local v41, "height":I
    const/16 v53, 0x0

    .line 2309
    .local v53, "measureAgain":Z
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    const/4 v12, 0x0

    cmpl-float v6, v6, v12

    if-lez v6, :cond_a77

    .line 2310
    move-object/from16 v0, p0

    iget v6, v0, mWidth:I

    sub-int v6, v6, v76

    int-to-float v6, v6

    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    mul-float/2addr v6, v12

    float-to-int v6, v6

    add-int v76, v76, v6

    .line 2311
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v76

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    .line 2313
    const/16 v53, 0x1

    .line 2315
    :cond_a77
    iget v6, v8, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    const/4 v12, 0x0

    cmpl-float v6, v6, v12

    if-lez v6, :cond_a95

    .line 2316
    move-object/from16 v0, p0

    iget v6, v0, mHeight:I

    sub-int v6, v6, v41

    int-to-float v6, v6

    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    mul-float/2addr v6, v12

    float-to-int v6, v6

    add-int v41, v41, v6

    .line 2317
    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v41

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    .line 2319
    const/16 v53, 0x1

    .line 2322
    :cond_a95
    if-eqz v53, :cond_aa0

    .line 2326
    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, performMeasure(II)V

    .line 2329
    :cond_aa0
    const/16 v50, 0x1

    .line 2363
    .end local v29    # "childHeightMeasureSpec":I
    .end local v30    # "childWidthMeasureSpec":I
    .end local v33    # "contentInsetsChanged":Z
    .end local v36    # "focusChangedDueToTouchMode":Z
    .end local v39    # "hadSurface":Z
    .end local v40    # "hardwareRenderer":Landroid/view/HardwareRenderer;
    .end local v41    # "height":I
    .end local v42    # "hwInitialized":Z
    .end local v53    # "measureAgain":Z
    .end local v76    # "width":I
    :cond_aa2
    :goto_aa2
    if-eqz v50, :cond_dd0

    move-object/from16 v0, p0

    iget-boolean v6, v0, mStopped:Z

    if-eqz v6, :cond_ab2

    move-object/from16 v0, p0

    iget-boolean v6, v0, mReportNextDraw:Z

    if-nez v6, :cond_ab2

    if-eqz v37, :cond_dd0

    :cond_ab2
    const/16 v34, 0x1

    .line 2364
    .local v34, "didLayout":Z
    :goto_ab4
    if-nez v34, :cond_abe

    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v6, :cond_dd4

    :cond_abe
    const/16 v72, 0x1

    .line 2366
    .local v72, "triggerGlobalLayoutListener":Z
    :goto_ac0
    if-eqz v34, :cond_b85

    .line 2367
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v10, v11}, performLayout(Landroid/view/WindowManager$LayoutParams;II)V

    .line 2372
    iget v6, v7, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_b85

    .line 2375
    move-object/from16 v0, p0

    iget-object v6, v0, mTmpLocation:[I

    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2376
    move-object/from16 v0, p0

    iget-object v6, v0, mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v12, v0, mTmpLocation:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, mTmpLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, mTmpLocation:[I

    const/16 v19, 0x0

    aget v14, v14, v19

    iget v0, v7, Landroid/view/View;->mRight:I

    move/from16 v19, v0

    add-int v14, v14, v19

    iget v0, v7, Landroid/view/View;->mLeft:I

    move/from16 v19, v0

    sub-int v14, v14, v19

    move-object/from16 v0, p0

    iget-object v0, v0, mTmpLocation:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    iget v0, v7, Landroid/view/View;->mBottom:I

    move/from16 v20, v0

    add-int v19, v19, v20

    iget v0, v7, Landroid/view/View;->mTop:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    invoke-virtual {v6, v12, v13, v14, v0}, Landroid/graphics/Region;->set(IIII)Z

    .line 2380
    move-object/from16 v0, p0

    iget-object v6, v0, mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v7, v6}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 2383
    move-object/from16 v0, p0

    iget-object v6, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-gtz v6, :cond_b30

    move-object/from16 v0, p0

    iget-object v6, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-lez v6, :cond_b47

    .line 2384
    :cond_b30
    move-object/from16 v0, p0

    iget-object v6, v0, mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v12, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v13, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v13, v13, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v12, v13}, Landroid/graphics/Region;->translate(II)V

    .line 2386
    :cond_b47
    move-object/from16 v0, p0

    iget-object v6, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v6, :cond_b58

    .line 2387
    move-object/from16 v0, p0

    iget-object v6, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v12, v0, mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v6, v12}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    .line 2390
    :cond_b58
    move-object/from16 v0, p0

    iget-object v6, v0, mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v12, v0, mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v6, v12}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b85

    .line 2391
    move-object/from16 v0, p0

    iget-object v6, v0, mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v12, v0, mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v6, v12}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 2392
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, mFullRedrawNeeded:Z

    .line 2395
    :try_start_b76
    move-object/from16 v0, p0

    iget-object v6, v0, mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v12, v0, mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget-object v13, v0, mTransparentRegion:Landroid/graphics/Region;

    invoke-interface {v6, v12, v13}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_b85
    .catch Landroid/os/RemoteException; {:try_start_b76 .. :try_end_b85} :catch_e6e

    .line 2408
    :cond_b85
    :goto_b85
    if-eqz v72, :cond_b97

    .line 2409
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v12, 0x0

    iput-boolean v12, v6, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 2410
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 2413
    :cond_b97
    if-eqz v32, :cond_c12

    .line 2415
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v6, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v47, v0

    .line 2416
    .local v47, "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    invoke-virtual/range {v47 .. v47}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    .line 2419
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 2420
    move-object/from16 v0, p0

    iget-object v12, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual/range {v47 .. v47}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_dd8

    const/4 v6, 0x1

    :goto_bba
    iput-boolean v6, v12, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    .line 2423
    if-nez v49, :cond_bca

    move-object/from16 v0, p0

    iget-object v6, v0, mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c12

    .line 2424
    :cond_bca
    move-object/from16 v0, p0

    iget-object v6, v0, mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 2430
    move-object/from16 v0, p0

    iget-object v6, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v6, :cond_ddb

    .line 2431
    move-object/from16 v0, p0

    iget-object v6, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v47

    iget-object v12, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v15

    .line 2432
    .local v15, "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v6, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v47

    iget-object v12, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v16

    .line 2433
    .local v16, "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v6, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v47

    iget-object v12, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v6, v12}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v17

    .line 2440
    .local v17, "touchableRegion":Landroid/graphics/Region;
    :goto_bfd
    move-object/from16 v0, p0

    iget-boolean v6, v0, mResizeAnimating:Z

    if-nez v6, :cond_c12

    .line 2442
    :try_start_c03
    move-object/from16 v0, p0

    iget-object v12, v0, mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v13, v0, mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, v47

    iget v14, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    invoke-interface/range {v12 .. v17}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_c12
    .catch Landroid/os/RemoteException; {:try_start_c03 .. :try_end_c12} :catch_e6b

    .line 2450
    .end local v15    # "contentInsets":Landroid/graphics/Rect;
    .end local v16    # "visibleInsets":Landroid/graphics/Rect;
    .end local v17    # "touchableRegion":Landroid/graphics/Region;
    .end local v47    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_c12
    :goto_c12
    const/16 v67, 0x0

    .line 2452
    .local v67, "skipDraw":Z
    move-object/from16 v0, p0

    iget-boolean v6, v0, mFirst:Z

    if-eqz v6, :cond_ded

    .line 2456
    move-object/from16 v0, p0

    iget-object v6, v0, mView:Landroid/view/View;

    if-eqz v6, :cond_c32

    .line 2457
    move-object/from16 v0, p0

    iget-object v6, v0, mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-nez v6, :cond_c32

    .line 2458
    move-object/from16 v0, p0

    iget-object v6, v0, mView:Landroid/view/View;

    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Landroid/view/View;->requestFocus(I)Z

    .line 2477
    :cond_c32
    :goto_c32
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, mFirst:Z

    .line 2478
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, mWillDrawSoon:Z

    .line 2479
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, mNewSurfaceNeeded:Z

    .line 2480
    move/from16 v0, v73

    move-object/from16 v1, p0

    iput v0, v1, mViewVisibility:I

    .line 2482
    move/from16 v0, v62

    move-object/from16 v1, p0

    iput v0, v1, mReportedViewVisibility:I

    .line 2486
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, mNewScaleFactorNeeded:Z

    .line 2490
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v6, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v6, :cond_cb3

    invoke-direct/range {p0 .. p0}, isInLocalFocusMode()Z

    move-result v6

    if-nez v6, :cond_cb3

    .line 2491
    move-object/from16 v0, p0

    iget-object v6, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v6}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v45

    .line 2493
    .local v45, "imTarget":Z
    move-object/from16 v0, p0

    iget-boolean v6, v0, mLastWasImTarget:Z

    move/from16 v0, v45

    if-eq v0, v6, :cond_cb3

    .line 2494
    move/from16 v0, v45

    move-object/from16 v1, p0

    iput-boolean v0, v1, mLastWasImTarget:Z

    .line 2495
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v18

    .line 2496
    .local v18, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v18, :cond_cb3

    if-eqz v45, :cond_cb3

    .line 2497
    move-object/from16 v0, p0

    iget-object v6, v0, mView:Landroid/view/View;

    const/4 v12, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v12}, Landroid/view/inputmethod/InputMethodManager;->onPreWindowFocus(Landroid/view/View;Z)V

    .line 2498
    move-object/from16 v0, p0

    iget-object v0, v0, mView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v6, v0, mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v6, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v6, v0, mHasHadWindowFocus:Z

    if-nez v6, :cond_e14

    const/16 v22, 0x1

    :goto_ca8
    move-object/from16 v0, p0

    iget-object v6, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v23, v0

    invoke-virtual/range {v18 .. v23}, Landroid/view/inputmethod/InputMethodManager;->onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 2506
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v45    # "imTarget":Z
    :cond_cb3
    and-int/lit8 v6, v61, 0x2

    if-eqz v6, :cond_cbc

    .line 2507
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, mReportNextDraw:Z

    .line 2510
    :cond_cbc
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    move-result v6

    if-nez v6, :cond_cca

    if-eqz v73, :cond_e18

    :cond_cca
    const/16 v28, 0x1

    .line 2513
    .local v28, "cancelDraw":Z
    :goto_ccc
    if-nez v28, :cond_e2d

    if-nez v56, :cond_e2d

    .line 2514
    if-eqz v67, :cond_cd8

    move-object/from16 v0, p0

    iget-boolean v6, v0, mReportNextDraw:Z

    if-eqz v6, :cond_e26

    .line 2515
    :cond_cd8
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v6, :cond_e23

    move-object/from16 v0, p0

    iget-object v6, v0, mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_e23

    .line 2516
    const/16 v43, 0x0

    .restart local v43    # "i":I
    :goto_cea
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v43

    if-ge v0, v6, :cond_e1c

    .line 2517
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingTransitions:Ljava/util/ArrayList;

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/LayoutTransition;

    invoke-virtual {v6}, Landroid/animation/LayoutTransition;->startChangingAnimations()V

    .line 2516
    add-int/lit8 v43, v43, 0x1

    goto :goto_cea

    .line 2251
    .end local v28    # "cancelDraw":Z
    .end local v34    # "didLayout":Z
    .end local v43    # "i":I
    .end local v67    # "skipDraw":Z
    .end local v72    # "triggerGlobalLayoutListener":Z
    .restart local v33    # "contentInsetsChanged":Z
    .restart local v39    # "hadSurface":Z
    .restart local v42    # "hwInitialized":Z
    :cond_d08
    if-eqz v39, :cond_9ac

    .line 2252
    move-object/from16 v0, p0

    iget-object v6, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 2253
    move-object/from16 v0, p0

    iget-object v6, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v6}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v27

    .line 2254
    .restart local v27    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v6, v0, mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v12, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v6, v12}, Landroid/view/SurfaceHolder$Callback2;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2255
    const-string v6, "ViewSystem"

    const-string v12, "ViewRootImpl >> surfaceDestroyed"

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    if-eqz v27, :cond_d4a

    .line 2257
    move-object/from16 v25, v27

    .restart local v25    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v51, v0

    .restart local v51    # "len$":I
    const/16 v44, 0x0

    .restart local v44    # "i$":I
    :goto_d36
    move/from16 v0, v44

    move/from16 v1, v51

    if-ge v0, v1, :cond_d4a

    aget-object v26, v25, v44

    .line 2258
    .restart local v26    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v6, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2257
    add-int/lit8 v44, v44, 0x1

    goto :goto_d36

    .line 2261
    .end local v25    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v26    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v44    # "i$":I
    .end local v51    # "len$":I
    :cond_d4a
    move-object/from16 v0, p0

    iget-object v6, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v6, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2263
    :try_start_d53
    move-object/from16 v0, p0

    iget-object v6, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    new-instance v12, Landroid/view/Surface;

    invoke-direct {v12}, Landroid/view/Surface;-><init>()V

    iput-object v12, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;
    :try_end_d5e
    .catchall {:try_start_d53 .. :try_end_d5e} :catchall_d69

    .line 2265
    move-object/from16 v0, p0

    iget-object v6, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v6, v6, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_9ac

    :catchall_d69
    move-exception v6

    move-object/from16 v0, p0

    iget-object v12, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v12, v12, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6

    .line 2285
    .end local v27    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v40    # "hardwareRenderer":Landroid/view/HardwareRenderer;
    :cond_d74
    const/4 v6, 0x0

    goto/16 :goto_a0e

    .line 2347
    .end local v33    # "contentInsetsChanged":Z
    .end local v39    # "hadSurface":Z
    .end local v40    # "hardwareRenderer":Landroid/view/HardwareRenderer;
    .end local v42    # "hwInitialized":Z
    :cond_d77
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, v6, Landroid/view/View$AttachInfo;->mWindowLeft:I

    move-object/from16 v0, v38

    iget v12, v0, Landroid/graphics/Rect;->left:I

    if-ne v6, v12, :cond_d8f

    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, v6, Landroid/view/View$AttachInfo;->mWindowTop:I

    move-object/from16 v0, v38

    iget v12, v0, Landroid/graphics/Rect;->top:I

    if-eq v6, v12, :cond_dcd

    :cond_d8f
    const/16 v77, 0x1

    .line 2349
    .local v77, "windowMoved":Z
    :goto_d91
    if-eqz v77, :cond_aa2

    .line 2350
    move-object/from16 v0, p0

    iget-object v6, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v6, :cond_da2

    .line 2351
    move-object/from16 v0, p0

    iget-object v6, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 2353
    :cond_da2
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v38

    iget v12, v0, Landroid/graphics/Rect;->left:I

    iput v12, v6, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 2354
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, v38

    iget v12, v0, Landroid/graphics/Rect;->top:I

    iput v12, v6, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 2357
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v6, :cond_aa2

    .line 2358
    move-object/from16 v0, p0

    iget-object v6, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v12, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v6, v12}, Landroid/view/HardwareRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    goto/16 :goto_aa2

    .line 2347
    .end local v77    # "windowMoved":Z
    :cond_dcd
    const/16 v77, 0x0

    goto :goto_d91

    .line 2363
    :cond_dd0
    const/16 v34, 0x0

    goto/16 :goto_ab4

    .line 2364
    .restart local v34    # "didLayout":Z
    :cond_dd4
    const/16 v72, 0x0

    goto/16 :goto_ac0

    .line 2420
    .restart local v47    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v72    # "triggerGlobalLayoutListener":Z
    :cond_dd8
    const/4 v6, 0x0

    goto/16 :goto_bba

    .line 2435
    :cond_ddb
    move-object/from16 v0, v47

    iget-object v15, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    .line 2436
    .restart local v15    # "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 2437
    .restart local v16    # "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    move-object/from16 v17, v0

    .restart local v17    # "touchableRegion":Landroid/graphics/Region;
    goto/16 :goto_bfd

    .line 2466
    .end local v15    # "contentInsets":Landroid/graphics/Rect;
    .end local v16    # "visibleInsets":Landroid/graphics/Rect;
    .end local v17    # "touchableRegion":Landroid/graphics/Region;
    .end local v47    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v67    # "skipDraw":Z
    :cond_ded
    move-object/from16 v0, p0

    iget-boolean v6, v0, mWindowsAnimating:Z

    if-eqz v6, :cond_c32

    .line 2467
    move-object/from16 v0, p0

    iget v6, v0, mRemainingFrameCount:I

    if-gtz v6, :cond_e05

    .line 2468
    move-object/from16 v0, p0

    iget-boolean v6, v0, mTwDrawDuringWindowsAnimating:Z

    if-nez v6, :cond_e05

    move-object/from16 v0, p0

    iget-boolean v6, v0, mResizeAnimating:Z

    if-eqz v6, :cond_e11

    .line 2474
    :cond_e05
    :goto_e05
    move-object/from16 v0, p0

    iget v6, v0, mRemainingFrameCount:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, mRemainingFrameCount:I

    goto/16 :goto_c32

    .line 2471
    :cond_e11
    const/16 v67, 0x1

    goto :goto_e05

    .line 2498
    .restart local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v45    # "imTarget":Z
    :cond_e14
    const/16 v22, 0x0

    goto/16 :goto_ca8

    .line 2510
    .end local v18    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v45    # "imTarget":Z
    :cond_e18
    const/16 v28, 0x0

    goto/16 :goto_ccc

    .line 2519
    .restart local v28    # "cancelDraw":Z
    .restart local v43    # "i":I
    :cond_e1c
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2522
    .end local v43    # "i":I
    :cond_e23
    invoke-direct/range {p0 .. p0}, performDraw()V

    .line 2536
    :cond_e26
    :goto_e26
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, mIsInTraversal:Z

    goto/16 :goto_c

    .line 2525
    :cond_e2d
    if-nez v73, :cond_e33

    .line 2527
    invoke-virtual/range {p0 .. p0}, scheduleTraversals()V

    goto :goto_e26

    .line 2528
    :cond_e33
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v6, :cond_e26

    move-object/from16 v0, p0

    iget-object v6, v0, mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_e26

    .line 2529
    const/16 v43, 0x0

    .restart local v43    # "i":I
    :goto_e45
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v43

    if-ge v0, v6, :cond_e63

    .line 2530
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingTransitions:Ljava/util/ArrayList;

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/LayoutTransition;

    invoke-virtual {v6}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    .line 2529
    add-int/lit8 v43, v43, 0x1

    goto :goto_e45

    .line 2532
    :cond_e63
    move-object/from16 v0, p0

    iget-object v6, v0, mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_e26

    .line 2444
    .end local v28    # "cancelDraw":Z
    .end local v43    # "i":I
    .end local v67    # "skipDraw":Z
    .restart local v15    # "contentInsets":Landroid/graphics/Rect;
    .restart local v16    # "visibleInsets":Landroid/graphics/Rect;
    .restart local v17    # "touchableRegion":Landroid/graphics/Region;
    .restart local v47    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :catch_e6b
    move-exception v6

    goto/16 :goto_c12

    .line 2396
    .end local v15    # "contentInsets":Landroid/graphics/Rect;
    .end local v16    # "visibleInsets":Landroid/graphics/Rect;
    .end local v17    # "touchableRegion":Landroid/graphics/Region;
    .end local v47    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :catch_e6e
    move-exception v6

    goto/16 :goto_b85
.end method

.method private postSendWindowContentChangedCallback(Landroid/view/View;I)V
    .registers 5
    .param p1, "source"    # Landroid/view/View;
    .param p2, "changeType"    # I

    .prologue
    .line 7868
    iget-object v0, p0, mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-nez v0, :cond_c

    .line 7869
    new-instance v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$1;)V

    iput-object v0, p0, mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    .line 7872
    :cond_c
    iget-object v0, p0, mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->runOrPost(Landroid/view/View;I)V

    .line 7873
    return-void
.end method

.method private profileRendering(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 2866
    iget-boolean v0, p0, mProfileRendering:Z

    if-eqz v0, :cond_27

    .line 2867
    iput-boolean p1, p0, mRenderProfilingEnabled:Z

    .line 2869
    iget-object v0, p0, mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-eqz v0, :cond_11

    .line 2870
    iget-object v0, p0, mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 2872
    :cond_11
    iget-boolean v0, p0, mRenderProfilingEnabled:Z

    if-eqz v0, :cond_28

    .line 2873
    iget-object v0, p0, mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_20

    .line 2874
    new-instance v0, Landroid/view/ViewRootImpl$3;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$3;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    .line 2885
    :cond_20
    iget-object v0, p0, mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 2890
    :cond_27
    :goto_27
    return-void

    .line 2887
    :cond_28
    const/4 v0, 0x0

    iput-object v0, p0, mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    goto :goto_27
.end method

.method private recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/4 v0, 0x0

    .line 7114
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7115
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 7117
    iget v0, p0, mQueuedInputEventPoolSize:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_17

    .line 7118
    iget v0, p0, mQueuedInputEventPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mQueuedInputEventPoolSize:I

    .line 7119
    iget-object v0, p0, mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7120
    iput-object p1, p0, mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7122
    :cond_17
    return-void
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZI)I
    .registers 27
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "internalViewVisibility"    # I
    .param p3, "insetsPending"    # Z
    .param p4, "viewVisibility"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6670
    move-object/from16 v0, p0

    iget-object v1, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    move/from16 v19, v0

    .line 6671
    .local v19, "appScale":F
    const/16 v21, 0x0

    .line 6672
    .local v21, "restore":Z
    if-eqz p1, :cond_20

    move-object/from16 v0, p0

    iget-object v1, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_20

    .line 6673
    const/16 v21, 0x1

    .line 6674
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 6675
    move-object/from16 v0, p0

    iget-object v1, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 6677
    :cond_20
    if-eqz p1, :cond_22

    .line 6680
    :cond_22
    move-object/from16 v0, p0

    iget-object v1, v0, mPendingConfiguration:Landroid/content/res/Configuration;

    const/4 v2, 0x0

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    .line 6682
    if-eqz p1, :cond_61

    move-object/from16 v0, p0

    iget v1, v0, mOrigWindowType:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_61

    .line 6684
    move-object/from16 v0, p0

    iget v1, v0, mTargetSdkVersion:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_61

    .line 6685
    const-string v1, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window type can not be changed after the window is added; ignoring change of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6687
    move-object/from16 v0, p0

    iget v1, v0, mOrigWindowType:I

    move-object/from16 v0, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6690
    :cond_61
    move-object/from16 v0, p0

    iget-object v1, v0, mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v2, v0, mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget v3, v0, mSeq:I

    move-object/from16 v0, p0

    iget-object v4, v0, mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v19

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v19

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v4, v6

    float-to-int v6, v4

    if-eqz p3, :cond_117

    const/4 v4, 0x1

    move v7, v4

    :goto_8f
    if-nez p2, :cond_11b

    move-object/from16 v0, p0

    iget-object v4, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_11b

    const/4 v4, 0x2

    :goto_9c
    or-int v8, v7, v4

    move-object/from16 v0, p0

    iget-object v9, v0, mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, mPendingOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, mPendingOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, mPendingConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v0, v0, mSurface:Landroid/view/Surface;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mScaleFactor:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mCocktailBar:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v4, p1

    move/from16 v7, p4

    invoke-interface/range {v1 .. v18}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;Landroid/graphics/PointF;Landroid/graphics/Rect;)I

    move-result v20

    .line 6706
    .local v20, "relayoutResult":I
    if-eqz v21, :cond_d9

    .line 6707
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 6710
    :cond_d9
    move-object/from16 v0, p0

    iget-object v1, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_116

    .line 6711
    move-object/from16 v0, p0

    iget-object v1, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 6712
    move-object/from16 v0, p0

    iget-object v1, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, mPendingOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6713
    move-object/from16 v0, p0

    iget-object v1, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6714
    move-object/from16 v0, p0

    iget-object v1, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6715
    move-object/from16 v0, p0

    iget-object v1, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6717
    :cond_116
    return v20

    .line 6690
    .end local v20    # "relayoutResult":I
    :cond_117
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_8f

    :cond_11b
    const/4 v4, 0x0

    goto :goto_9c
.end method

.method private removeSendWindowContentChangedCallback()V
    .registers 3

    .prologue
    .line 7880
    iget-object v0, p0, mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-eqz v0, :cond_b

    .line 7881
    iget-object v0, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7883
    :cond_b
    return-void
.end method

.method private scheduleProcessInputEvents()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 7158
    iget-boolean v1, p0, mProcessInputEventsScheduled:Z

    if-nez v1, :cond_17

    .line 7159
    iput-boolean v3, p0, mProcessInputEventsScheduled:Z

    .line 7160
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7161
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7162
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7164
    .end local v0    # "msg":Landroid/os/Message;
    :cond_17
    return-void
.end method

.method private sendUserActionEvent()V
    .registers 7

    .prologue
    .line 8637
    iget-object v2, p0, mView:Landroid/view/View;

    if-nez v2, :cond_d

    .line 8638
    const-string v2, "ViewRootImpl"

    const-string/jumbo v3, "sendUserActionEvent() mView == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8647
    :cond_c
    :goto_c
    return-void

    .line 8641
    :cond_d
    const-string v2, "1"

    const-string v3, "gsm.sim.userEvent"

    const/4 v4, 0x0

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "1"

    const-string v3, "gsm.sim.userEvent"

    const/4 v4, 0x1

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 8642
    :cond_2f
    new-instance v0, Lcom/android/internal/telephony/cat/CatEventDownload;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatEventDownload;-><init>(I)V

    .line 8643
    .local v0, "catEventUserActivity":Lcom/android/internal/telephony/cat/CatEventDownload;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.stk.event"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8644
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "STK EVENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8645
    iget-object v2, p0, mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_c
.end method

.method private startContentResizeAnimation()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 9177
    invoke-direct {p0}, cancelContentResizeAnimation()V

    .line 9179
    iget-object v2, p0, mPreContentInsets:Landroid/graphics/Rect;

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 9180
    .local v0, "from":I
    iget-object v2, p0, mPendingContentInsets:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 9182
    .local v1, "to":I
    iget-object v2, p0, mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v3, p0, mPreContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9183
    iget-object v2, p0, mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v3, p0, mPreContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 9184
    iget-object v2, p0, mContentResizeAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    aput v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 9185
    iput-boolean v5, p0, mResizeAnimating:Z

    .line 9187
    if-ge v0, v1, :cond_77

    .line 9188
    iget-object v2, p0, mContentResizeAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9193
    :goto_32
    sget-boolean v2, SAFE_DEBUG:Z

    if-eqz v2, :cond_68

    .line 9194
    const-string v2, "ViewRootImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" called content resize anim, from:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9197
    :cond_68
    iget-object v2, p0, mContentResizeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 9198
    iget-object v2, p0, mView:Landroid/view/View;

    if-eqz v2, :cond_76

    .line 9199
    iget-object v2, p0, mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->dispatchSipResizeAnimationState(Z)Z

    .line 9200
    :cond_76
    return-void

    .line 9190
    :cond_77
    iget-object v2, p0, mContentResizeAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_32
.end method

.method private trackFPS()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 2898
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2899
    .local v4, "nowTime":J
    iget-wide v8, p0, mFpsStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_14

    .line 2900
    iput-wide v4, p0, mFpsPrevTime:J

    iput-wide v4, p0, mFpsStartTime:J

    .line 2901
    iput v12, p0, mFpsNumFrames:I

    .line 2916
    :cond_13
    :goto_13
    return-void

    .line 2903
    :cond_14
    iget v8, p0, mFpsNumFrames:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, mFpsNumFrames:I

    .line 2904
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 2905
    .local v1, "thisHash":Ljava/lang/String;
    iget-wide v8, p0, mFpsPrevTime:J

    sub-long v2, v4, v8

    .line 2906
    .local v2, "frameTime":J
    iget-wide v8, p0, mFpsStartTime:J

    sub-long v6, v4, v8

    .line 2907
    .local v6, "totalTime":J
    const-string v8, "ViewRootImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\tFrame time:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    iput-wide v4, p0, mFpsPrevTime:J

    .line 2909
    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-lez v8, :cond_13

    .line 2910
    iget v8, p0, mFpsNumFrames:I

    int-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v9

    long-to-float v9, v6

    div-float v0, v8, v9

    .line 2911
    .local v0, "fps":F
    const-string v8, "ViewRootImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\tFPS:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    iput-wide v4, p0, mFpsStartTime:J

    .line 2913
    iput v12, p0, mFpsNumFrames:I

    goto :goto_13
.end method


# virtual methods
.method public bringChildToFront(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1354
    return-void
.end method

.method public canResolveLayoutDirection()Z
    .registers 2

    .prologue
    .line 8056
    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextAlignment()Z
    .registers 2

    .prologue
    .line 8086
    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextDirection()Z
    .registers 2

    .prologue
    .line 8071
    const/4 v0, 0x1

    return v0
.end method

.method public cancelInvalidate(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7571
    iget-object v0, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    .line 7574
    iget-object v0, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    .line 7575
    iget-object v0, p0, mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->removeView(Landroid/view/View;)V

    .line 7576
    return-void
.end method

.method changeCanvasOpacity(Z)V
    .registers 5
    .param p1, "opaque"    # Z

    .prologue
    .line 8216
    const-string v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCanvasOpacity: opaque="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8217
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_25

    .line 8218
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->setOpaque(Z)V

    .line 8220
    :cond_25
    return-void
.end method

.method checkThread()V
    .registers 3

    .prologue
    .line 8133
    iget-object v0, p0, mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_10

    .line 8134
    new-instance v0, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8137
    :cond_10
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 7907
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "hasTransientState"    # Z

    .prologue
    .line 8163
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3669
    invoke-virtual {p0}, checkThread()V

    .line 3670
    invoke-virtual {p0}, scheduleTraversals()V

    .line 3671
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .registers 2
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .prologue
    .line 7903
    return-void
.end method

.method public debug()V
    .registers 2

    .prologue
    .line 6782
    iget-object v0, p0, mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    .line 6783
    return-void
.end method

.method destroyHardwareResources()V
    .registers 3

    .prologue
    .line 960
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_16

    .line 961
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v1, p0, mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 962
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->destroy()V

    .line 964
    :cond_16
    return-void
.end method

.method public detachFunctor(J)V
    .registers 4
    .param p1, "functor"    # J

    .prologue
    .line 968
    const/4 v0, 0x1

    iput-boolean v0, p0, mBlockResizeBuffer:Z

    .line 969
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_10

    .line 972
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->stopDrawing()V

    .line 974
    :cond_10
    return-void
.end method

.method die(Z)Z
    .registers 5
    .param p1, "immediate"    # Z

    .prologue
    .line 6865
    if-eqz p1, :cond_b

    iget-boolean v0, p0, mIsInTraversal:Z

    if-nez v0, :cond_b

    .line 6866
    invoke-virtual {p0}, doDie()V

    .line 6867
    const/4 v0, 0x0

    .line 6877
    :goto_a
    return v0

    .line 6870
    :cond_b
    iget-boolean v0, p0, mIsDrawing:Z

    if-nez v0, :cond_1a

    .line 6871
    invoke-direct {p0}, destroyHardwareRenderer()V

    .line 6876
    :goto_12
    iget-object v0, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 6877
    const/4 v0, 0x1

    goto :goto_a

    .line 6873
    :cond_1a
    const-string v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to destroy the window while drawing!\n  window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public dispatchAppVisibility(Z)V
    .registers 5
    .param p1, "visible"    # Z

    .prologue
    .line 7617
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7618
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_13

    const/4 v1, 0x1

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 7619
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7620
    return-void

    .line 7618
    :cond_13
    const/4 v1, 0x0

    goto :goto_b
.end method

.method dispatchApplyInsets(Landroid/view/View;)V
    .registers 3
    .param p1, "host"    # Landroid/view/View;

    .prologue
    .line 1612
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, getWindowInsets(Z)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 1613
    return-void
.end method

.method public dispatchAttachedDisplayChanged(I)V
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 8508
    sget-boolean v1, Lcom/samsung/android/multidisplay/common/MultiDisplayFeatures;->DEBUG_MULTIDISPLAY:Z

    if-eqz v1, :cond_3c

    .line 8509
    const-string v2, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, mAdded:Z

    if-eqz v1, :cond_4c

    const-string v1, "ADDED"

    :goto_27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "). Attached display has changed to d"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8513
    :cond_3c
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 8514
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 8515
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8517
    return-void

    .line 8509
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4c
    const-string v1, "NOT-ADDED"

    goto :goto_27
.end method

.method public dispatchCheckFocus()V
    .registers 3

    .prologue
    const/16 v1, 0xd

    .line 7687
    iget-object v0, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 7689
    iget-object v0, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 7691
    :cond_f
    return-void
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 7649
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7650
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7651
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7652
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7653
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3712
    iget-object v0, p0, mView:Landroid/view/View;

    if-eqz v0, :cond_24

    iget-object v0, p0, mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_24

    .line 3713
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, v4}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    .line 3714
    iget-object v0, p0, mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 3717
    iget-object v0, p0, mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    if-eqz v0, :cond_24

    iget-object v0, p0, mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    const-string v1, ""

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/toolbox/TwToolBoxManager;->sendMessage(Ljava/lang/String;II)V

    .line 3722
    :cond_24
    iget-object v0, p0, mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    .line 3723
    iget-object v0, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 3725
    iget-object v0, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z

    .line 3727
    invoke-direct {p0}, removeSendWindowContentChangedCallback()V

    .line 3729
    invoke-direct {p0}, destroyHardwareRenderer()V

    .line 3731
    invoke-virtual {p0, v3, v3}, setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3733
    iget-object v0, p0, mView:Landroid/view/View;

    if-eqz v0, :cond_52

    .line 3734
    iget-object v0, p0, mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 3735
    iput-object v3, p0, mView:Landroid/view/View;

    .line 3736
    const-string v0, "ViewRootImpl"

    const-string v1, "#3 mView = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    :cond_52
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v3, v0, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 3740
    iget-object v0, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 3742
    iget-object v0, p0, mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v0, :cond_73

    iget-object v0, p0, mInputQueue:Landroid/view/InputQueue;

    if-eqz v0, :cond_73

    .line 3743
    iget-object v0, p0, mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v1, p0, mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v0, v1}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    .line 3744
    iget-object v0, p0, mInputQueue:Landroid/view/InputQueue;

    invoke-virtual {v0}, Landroid/view/InputQueue;->dispose()V

    .line 3745
    iput-object v3, p0, mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 3746
    iput-object v3, p0, mInputQueue:Landroid/view/InputQueue;

    .line 3748
    :cond_73
    iget-object v0, p0, mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v0, :cond_7e

    .line 3749
    iget-object v0, p0, mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->dispose()V

    .line 3750
    iput-object v3, p0, mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 3753
    :cond_7e
    :try_start_7e
    iget-boolean v0, p0, mAdded:Z

    if-eqz v0, :cond_89

    .line 3754
    iget-object v0, p0, mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_89} :catch_9f

    .line 3761
    :cond_89
    :goto_89
    iget-object v0, p0, mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_94

    .line 3762
    iget-object v0, p0, mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 3763
    iput-object v3, p0, mInputChannel:Landroid/view/InputChannel;

    .line 3766
    :cond_94
    iget-object v0, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 3768
    invoke-virtual {p0}, unscheduleTraversals()V

    .line 3769
    return-void

    .line 3756
    :catch_9f
    move-exception v0

    goto :goto_89
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 7657
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    .line 7658
    const/16 v1, 0x10

    .line 7659
    .local v1, "what":I
    iget-object v2, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 7663
    :goto_e
    iget-object v2, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7664
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7665
    return-void

    .line 7661
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "what":I
    :cond_1a
    const/16 v1, 0xf

    .restart local v1    # "what":I
    goto :goto_e
.end method

.method public dispatchFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V
    .registers 5
    .param p1, "connection"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 6977
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6978
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6979
    return-void
.end method

.method public dispatchGetNewSurface()V
    .registers 4

    .prologue
    .line 7623
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7624
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7625
    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 7579
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V

    .line 7580
    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V
    .registers 7
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;

    .prologue
    .line 7583
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 7584
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 7585
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 7586
    iget-object v2, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 7587
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7588
    iget-object v2, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7589
    return-void
.end method

.method public dispatchInvalidateDelayed(Landroid/view/View;J)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delayMilliseconds"    # J

    .prologue
    .line 7552
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7553
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7554
    return-void
.end method

.method public dispatchInvalidateOnAnimation(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 7563
    iget-object v0, p0, mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addView(Landroid/view/View;)V

    .line 7564
    return-void
.end method

.method public dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V
    .registers 8
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;
    .param p2, "delayMilliseconds"    # J

    .prologue
    .line 7558
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7559
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7560
    return-void
.end method

.method public dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;

    .prologue
    .line 7567
    iget-object v0, p0, mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    .line 7568
    return-void
.end method

.method public dispatchKeyFromIme(Landroid/view/KeyEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 7598
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7599
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7600
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7601
    return-void
.end method

.method public dispatchMoved(II)V
    .registers 9
    .param p1, "newX"    # I
    .param p2, "newY"    # I

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 7012
    iget-object v2, p0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_1c

    .line 7013
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 7014
    .local v1, "point":Landroid/graphics/PointF;
    iget-object v2, p0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 7015
    iget v2, v1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int p1, v2

    .line 7016
    iget v2, v1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    add-double/2addr v2, v4

    double-to-int p2, v2

    .line 7018
    .end local v1    # "point":Landroid/graphics/PointF;
    :cond_1c
    iget-object v2, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x17

    invoke-virtual {v2, v3, p1, p2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 7019
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7020
    return-void
.end method

.method public dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;Landroid/graphics/Rect;)V
    .registers 15
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "overscanInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "stableInsets"    # Landroid/graphics/Rect;
    .param p6, "outsets"    # Landroid/graphics/Rect;
    .param p7, "reportDraw"    # Z
    .param p8, "newConfig"    # Landroid/content/res/Configuration;
    .param p9, "cocktailBarFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 6989
    iget-object v4, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    if-eqz p7, :cond_8a

    const/4 v3, 0x5

    :goto_5
    invoke-virtual {v4, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 6990
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_21

    .line 6991
    iget-object v3, p0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6992
    iget-object v3, p0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6993
    iget-object v3, p0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, p3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6994
    iget-object v3, p0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, p4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 6996
    :cond_21
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 6997
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v3, v4, :cond_8d

    const/4 v2, 0x1

    .line 6998
    .local v2, "sameProcessCall":Z
    :goto_30
    if-eqz v2, :cond_38

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p1, v3

    .end local p1    # "frame":Landroid/graphics/Rect;
    :cond_38
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6999
    if-eqz v2, :cond_42

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p3, v3

    .end local p3    # "contentInsets":Landroid/graphics/Rect;
    :cond_42
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 7000
    if-eqz v2, :cond_4c

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p4, v3

    .end local p4    # "visibleInsets":Landroid/graphics/Rect;
    :cond_4c
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 7001
    if-eqz v2, :cond_58

    if-eqz p8, :cond_58

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, p8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object p8, v3

    .end local p8    # "newConfig":Landroid/content/res/Configuration;
    :cond_58
    iput-object p8, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 7002
    if-eqz v2, :cond_62

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p2, v3

    .end local p2    # "overscanInsets":Landroid/graphics/Rect;
    :cond_62
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 7003
    if-eqz v2, :cond_6c

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p5, v3

    .end local p5    # "stableInsets":Landroid/graphics/Rect;
    :cond_6c
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 7004
    if-eqz v2, :cond_76

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p6, v3

    .end local p6    # "outsets":Landroid/graphics/Rect;
    :cond_76
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 7005
    if-eqz v2, :cond_80

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object p9, v3

    .end local p9    # "cocktailBarFrame":Landroid/graphics/Rect;
    :cond_80
    iput-object p9, v0, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    .line 7006
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7007
    iget-object v3, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v3, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7008
    return-void

    .line 6989
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "sameProcessCall":Z
    .restart local p1    # "frame":Landroid/graphics/Rect;
    .restart local p2    # "overscanInsets":Landroid/graphics/Rect;
    .restart local p3    # "contentInsets":Landroid/graphics/Rect;
    .restart local p4    # "visibleInsets":Landroid/graphics/Rect;
    .restart local p5    # "stableInsets":Landroid/graphics/Rect;
    .restart local p6    # "outsets":Landroid/graphics/Rect;
    .restart local p8    # "newConfig":Landroid/content/res/Configuration;
    .restart local p9    # "cocktailBarFrame":Landroid/graphics/Rect;
    :cond_8a
    const/4 v3, 0x4

    goto/16 :goto_5

    .line 6997
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_8d
    const/4 v2, 0x0

    goto :goto_30
.end method

.method public dispatchSmartClipRemoteRequest(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
    .registers 5
    .param p1, "request"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    .line 7815
    iget-object v0, p0, mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    if-eqz v0, :cond_a

    .line 7816
    iget-object v0, p0, mSmartClipDispatcherProxy:Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$SmartClipRemoteRequestDispatcherProxy;->dispatchSmartClipRemoteRequest(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V

    .line 7820
    :goto_9
    return-void

    .line 7818
    :cond_a
    const-string v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchSmartClipRemoteRequest : SmartClip dispatcher is null! req id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mRequestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .registers 9
    .param p1, "seq"    # I
    .param p2, "globalVisibility"    # I
    .param p3, "localValue"    # I
    .param p4, "localChanges"    # I

    .prologue
    .line 7669
    new-instance v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;-><init>()V

    .line 7670
    .local v0, "args":Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;
    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    .line 7671
    iput p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    .line 7672
    iput p3, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    .line 7673
    iput p4, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    .line 7674
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v2, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7675
    return-void
.end method

.method public dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 7610
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_a

    .line 7611
    check-cast p1, Landroid/view/MotionEvent;

    .end local p1    # "event":Landroid/view/InputEvent;
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 7613
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_a
    invoke-virtual {p0, p1}, synthesizeInputEvent(Landroid/view/InputEvent;)V

    .line 7614
    return-void
.end method

.method public dispatchWindowAnimationStarted(I)V
    .registers 5
    .param p1, "remainingFrameCount"    # I

    .prologue
    .line 7678
    iget-object v0, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 7680
    return-void
.end method

.method public dispatchWindowAnimationStopped()V
    .registers 3

    .prologue
    .line 7683
    iget-object v0, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 7684
    return-void
.end method

.method public dispatchWindowShown()V
    .registers 3

    .prologue
    .line 7645
    iget-object v0, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 7646
    return-void
.end method

.method disposeResizeBuffer()V
    .registers 2

    .prologue
    .line 1366
    iget-object v0, p0, mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_c

    .line 1367
    iget-object v0, p0, mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->destroy()V

    .line 1368
    const/4 v0, 0x0

    iput-object v0, p0, mResizeBuffer:Landroid/view/HardwareLayer;

    .line 1370
    :cond_c
    return-void
.end method

.method doConsumeBatchedInput(J)V
    .registers 6
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 7383
    iget-boolean v0, p0, mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_1f

    .line 7384
    const/4 v0, 0x0

    iput-boolean v0, p0, mConsumeBatchedInputScheduled:Z

    .line 7385
    iget-object v0, p0, mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v0, :cond_1c

    .line 7386
    iget-object v0, p0, mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->consumeBatchedInputEvents(J)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1c

    .line 7393
    invoke-virtual {p0}, scheduleConsumeBatchedInput()V

    .line 7396
    :cond_1c
    invoke-virtual {p0}, doProcessInputEvents()V

    .line 7398
    :cond_1f
    return-void
.end method

.method doDie()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 6881
    invoke-virtual {p0}, checkThread()V

    .line 6883
    monitor-enter p0

    .line 6884
    :try_start_6
    iget-boolean v3, p0, mRemoved:Z

    if-eqz v3, :cond_c

    .line 6885
    monitor-exit p0

    .line 6927
    :goto_b
    return-void

    .line 6889
    :cond_c
    invoke-direct {p0}, handleDispatchSurfaceDestroyDeferred()V

    .line 6892
    const/4 v3, 0x1

    iput-boolean v3, p0, mRemoved:Z

    .line 6893
    invoke-virtual {p0}, dispatchDetachedFromWindow()V

    .line 6895
    iget-boolean v3, p0, mAdded:Z

    if-eqz v3, :cond_4b

    iget-boolean v3, p0, mFirst:Z

    if-nez v3, :cond_4b

    .line 6896
    invoke-direct {p0}, destroyHardwareRenderer()V

    .line 6898
    iget-object v3, p0, mView:Landroid/view/View;

    if-eqz v3, :cond_4b

    .line 6899
    iget-object v3, p0, mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 6903
    .local v1, "viewVisibility":I
    iget v3, p0, mReportedViewVisibility:I

    if-eq v3, v1, :cond_5c

    .line 6904
    .local v0, "reportViewVisibilityChanged":Z
    :goto_2e
    iget-boolean v2, p0, mWindowAttributesChanged:Z
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_5e

    if-nez v2, :cond_34

    if-eqz v0, :cond_46

    .line 6910
    :cond_34
    :try_start_34
    iget-object v2, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3, v1}, relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZI)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_46

    .line 6913
    iget-object v2, p0, mWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_46} :catch_61
    .catchall {:try_start_34 .. :try_end_46} :catchall_5e

    .line 6919
    :cond_46
    :goto_46
    :try_start_46
    iget-object v2, p0, mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 6923
    .end local v0    # "reportViewVisibilityChanged":Z
    .end local v1    # "viewVisibility":I
    :cond_4b
    const/4 v2, 0x0

    iput-boolean v2, p0, mAdded:Z

    .line 6924
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_5e

    .line 6925
    iget-object v2, p0, mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v2}, Landroid/view/Choreographer;->removeRootContext()V

    .line 6926
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/WindowManagerGlobal;->doRemoveView(Landroid/view/ViewRootImpl;)V

    goto :goto_b

    .restart local v1    # "viewVisibility":I
    :cond_5c
    move v0, v2

    .line 6903
    goto :goto_2e

    .line 6924
    .end local v1    # "viewVisibility":I
    :catchall_5e
    move-exception v2

    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v2

    .line 6915
    .restart local v0    # "reportViewVisibilityChanged":Z
    .restart local v1    # "viewVisibility":I
    :catch_61
    move-exception v2

    goto :goto_46
.end method

.method doProcessInputEvents()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 7168
    :goto_2
    iget-object v6, p0, mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-eqz v6, :cond_49

    .line 7169
    iget-object v3, p0, mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7170
    .local v3, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v6, p0, mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7171
    iget-object v6, p0, mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-nez v6, :cond_12

    .line 7172
    iput-object v11, p0, mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7174
    :cond_12
    iput-object v11, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7176
    iget v6, p0, mPendingInputEventCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, mPendingInputEventCount:I

    .line 7177
    const-wide/16 v6, 0x4

    iget-object v8, p0, mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    iget v9, p0, mPendingInputEventCount:I

    invoke-static {v6, v7, v8, v9}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 7180
    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v6}, Landroid/view/InputEvent;->getEventTimeNano()J

    move-result-wide v0

    .line 7181
    .local v0, "eventTime":J
    move-wide v4, v0

    .line 7182
    .local v4, "oldestEventTime":J
    iget-object v6, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v6, v6, Landroid/view/MotionEvent;

    if-eqz v6, :cond_3e

    .line 7183
    iget-object v2, v3, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v2, Landroid/view/MotionEvent;

    .line 7184
    .local v2, "me":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v6

    if-lez v6, :cond_3e

    .line 7185
    invoke-virtual {v2, v10}, Landroid/view/MotionEvent;->getHistoricalEventTimeNano(I)J

    move-result-wide v4

    .line 7188
    .end local v2    # "me":Landroid/view/MotionEvent;
    :cond_3e
    iget-object v6, p0, mChoreographer:Landroid/view/Choreographer;

    iget-object v6, v6, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v6, v0, v1, v4, v5}, Landroid/view/FrameInfo;->updateInputEventTime(JJ)V

    .line 7190
    invoke-direct {p0, v3}, deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_2

    .line 7195
    .end local v0    # "eventTime":J
    .end local v3    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    .end local v4    # "oldestEventTime":J
    :cond_49
    iget-boolean v6, p0, mProcessInputEventsScheduled:Z

    if-eqz v6, :cond_56

    .line 7196
    iput-boolean v10, p0, mProcessInputEventsScheduled:Z

    .line 7197
    iget-object v6, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v7, 0x13

    invoke-virtual {v6, v7}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 7199
    :cond_56
    return-void
.end method

.method doTraversal()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1429
    iget-boolean v0, p0, mTraversalScheduled:Z

    if-eqz v0, :cond_2b

    .line 1430
    iput-boolean v2, p0, mTraversalScheduled:Z

    .line 1431
    iget-object v0, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget v1, p0, mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 1433
    iget-boolean v0, p0, mProfile:Z

    if-eqz v0, :cond_1f

    .line 1434
    const-string v0, "ViewAncestor"

    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 1437
    :cond_1f
    invoke-direct {p0}, performTraversals()V

    .line 1439
    iget-boolean v0, p0, mProfile:Z

    if-eqz v0, :cond_2b

    .line 1440
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 1441
    iput-boolean v2, p0, mProfile:Z

    .line 1444
    :cond_2b
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 6786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6787
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "ViewRoot:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6788
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mAdded="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, mAdded:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 6789
    const-string v1, " mRemoved="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, mRemoved:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6790
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mConsumeBatchedInputScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6791
    iget-boolean v1, p0, mConsumeBatchedInputScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6792
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mConsumeBatchedInputImmediatelyScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6793
    iget-boolean v1, p0, mConsumeBatchedInputImmediatelyScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6794
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingInputEventCount="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6795
    iget v1, p0, mPendingInputEventCount:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 6796
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mProcessInputEventsScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6797
    iget-boolean v1, p0, mProcessInputEventsScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 6798
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTraversalScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6799
    iget-boolean v1, p0, mTraversalScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 6800
    iget-boolean v1, p0, mTraversalScheduled:Z

    if-eqz v1, :cond_a1

    .line 6801
    const-string v1, " (barrier="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, mTraversalBarrier:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ")"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6805
    :goto_89
    iget-object v1, p0, mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v1, v0, p3}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6807
    iget-object v1, p0, mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1, p1, p3}, Landroid/view/Choreographer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6809
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "View Hierarchy:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6810
    iget-object v1, p0, mView:Landroid/view/View;

    invoke-direct {p0, v0, p3, v1}, dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 6811
    return-void

    .line 6803
    :cond_a1
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    goto :goto_89
.end method

.method public dumpGfxInfo([I)V
    .registers 4
    .param p1, "info"    # [I

    .prologue
    const/4 v1, 0x0

    .line 6835
    const/4 v0, 0x1

    aput v1, p1, v0

    aput v1, p1, v1

    .line 6836
    iget-object v0, p0, mView:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 6837
    iget-object v0, p0, mView:Landroid/view/View;

    invoke-static {v0, p1}, getGfxInfo(Landroid/view/View;[I)V

    .line 6839
    :cond_f
    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v1, 0x0

    .line 7125
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 7126
    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V
    .registers 11
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;
    .param p3, "flags"    # I
    .param p4, "processImmediately"    # Z

    .prologue
    .line 7130
    invoke-direct {p0, p1}, adjustInputEventForCompatibility(Landroid/view/InputEvent;)V

    .line 7131
    invoke-direct {p0, p1, p2, p3}, obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;

    move-result-object v1

    .line 7138
    .local v1, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v0, p0, mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7139
    .local v0, "last":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-nez v0, :cond_24

    .line 7140
    iput-object v1, p0, mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7141
    iput-object v1, p0, mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7146
    :goto_f
    iget v2, p0, mPendingInputEventCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mPendingInputEventCount:I

    .line 7147
    const-wide/16 v2, 0x4

    iget-object v4, p0, mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    iget v5, p0, mPendingInputEventCount:I

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 7150
    if-eqz p4, :cond_29

    .line 7151
    invoke-virtual {p0}, doProcessInputEvents()V

    .line 7155
    :goto_23
    return-void

    .line 7143
    :cond_24
    iput-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7144
    iput-object v1, p0, mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_f

    .line 7153
    :cond_29
    invoke-direct {p0}, scheduleProcessInputEvents()V

    goto :goto_23
.end method

.method ensureTouchMode(Z)Z
    .registers 4
    .param p1, "inTouchMode"    # Z

    .prologue
    .line 4389
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v1, p1, :cond_8

    const/4 v1, 0x0

    .line 4401
    :goto_7
    return v1

    .line 4393
    :cond_8
    :try_start_8
    invoke-direct {p0}, isInLocalFocusMode()Z

    move-result v1

    if-nez v1, :cond_13

    .line 4394
    iget-object v1, p0, mWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v1, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_18

    .line 4401
    :cond_13
    invoke-direct {p0, p1}, ensureTouchModeLocally(Z)Z

    move-result v1

    goto :goto_7

    .line 4396
    :catch_18
    move-exception v0

    .line 4397
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 5
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 6774
    invoke-virtual {p0}, checkThread()V

    .line 6775
    iget-object v0, p0, mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_b

    .line 6776
    const/4 v0, 0x0

    .line 6778
    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    iget-object v0, p0, mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_a
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3680
    invoke-virtual {p0}, checkThread()V

    .line 3681
    iget-object v2, p0, mView:Landroid/view/View;

    if-eqz v2, :cond_12

    .line 3682
    iget-object v2, p0, mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_13

    .line 3683
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 3698
    :cond_12
    :goto_12
    return-void

    .line 3688
    :cond_13
    iget-object v2, p0, mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3689
    .local v0, "focused":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_12

    move-object v1, v0

    .line 3690
    check-cast v1, Landroid/view/ViewGroup;

    .line 3691
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_12

    invoke-static {p1, v0}, isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3693
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_12
.end method

.method public getAccessibilityFocusedHost()Landroid/view/View;
    .registers 2

    .prologue
    .line 3598
    iget-object v0, p0, mAccessibilityFocusedHost:Landroid/view/View;

    return-object v0
.end method

.method public getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .prologue
    .line 3605
    iget-object v0, p0, mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;
    .registers 3

    .prologue
    .line 6653
    iget-object v0, p0, mView:Landroid/view/View;

    if-nez v0, :cond_c

    .line 6654
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAccessibilityInteractionController called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6657
    :cond_c
    iget-object v0, p0, mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    if-nez v0, :cond_17

    .line 6658
    new-instance v0, Landroid/view/AccessibilityInteractionController;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityInteractionController;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    .line 6660
    :cond_17
    iget-object v0, p0, mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    return-object v0
.end method

.method public getAppVisibility()Z
    .registers 2

    .prologue
    .line 1333
    iget-boolean v0, p0, mAppVisible:Z

    return v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;

    .prologue
    const/4 v2, 0x0

    .line 1344
    iget-object v0, p0, mView:Landroid/view/View;

    if-eq p1, v0, :cond_d

    .line 1345
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "child is not mine, honest!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1349
    :cond_d
    iget v0, p0, mWidth:I

    iget v1, p0, mHeight:I

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0
.end method

.method public getCocktailBarRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 9037
    iget-object v0, p0, mCocktailBar:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCurrentWritingBuddyView()Landroid/view/View;
    .registers 2

    .prologue
    .line 8937
    iget-object v0, p0, mCurrentWritingBuddyView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayId()I
    .registers 2

    .prologue
    .line 952
    iget-object v0, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    return v0
.end method

.method getHostVisibility()I
    .registers 4

    .prologue
    const/16 v1, 0x8

    .line 1358
    :try_start_2
    iget-boolean v2, p0, mAppVisible:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_d

    move-result v1

    .line 1361
    :cond_c
    :goto_c
    return v1

    .line 1359
    :catch_d
    move-exception v0

    .line 1360
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public getLastTouchPoint(Landroid/graphics/Point;)V
    .registers 3
    .param p1, "outLocation"    # Landroid/graphics/Point;

    .prologue
    .line 6632
    iget-object v0, p0, mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 6633
    iget-object v0, p0, mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 6634
    return-void
.end method

.method public getLayoutDirection()I
    .registers 2

    .prologue
    .line 8066
    const/4 v0, 0x0

    return v0
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .registers 2

    .prologue
    .line 1073
    iget-object v0, p0, mLocation:Landroid/view/WindowLeaked;

    return-object v0
.end method

.method public getMotionEventMonitor()Landroid/view/ViewRootImpl$MotionEventMonitor;
    .registers 2

    .prologue
    .line 8930
    iget-object v0, p0, mMotionEventMonitor:Landroid/view/ViewRootImpl$MotionEventMonitor;

    return-object v0
.end method

.method public getMultiWindowScale()Landroid/graphics/PointF;
    .registers 2

    .prologue
    .line 8973
    iget-object v0, p0, mScaleFactor:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 2

    .prologue
    .line 8948
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 8949
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 8954
    :goto_6
    return-object v0

    .line 8951
    :cond_7
    iget-object v0, p0, mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_16

    .line 8952
    iget-object v0, p0, mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    goto :goto_6

    .line 8954
    :cond_16
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    goto :goto_6
.end method

.method public getParent()Landroid/view/ViewParent;
    .registers 2

    .prologue
    .line 1339
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .registers 2

    .prologue
    .line 3675
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStopped()Z
    .registers 2

    .prologue
    .line 1329
    iget-boolean v0, p0, mStopped:Z

    return v0
.end method

.method public getTextAlignment()I
    .registers 2

    .prologue
    .line 8096
    const/4 v0, 0x1

    return v0
.end method

.method public getTextDirection()I
    .registers 2

    .prologue
    .line 8081
    const/4 v0, 0x1

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 956
    iget-object v0, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1069
    iget-object v0, p0, mView:Landroid/view/View;

    return-object v0
.end method

.method public getWindowFlags()I
    .registers 2

    .prologue
    .line 948
    iget-object v0, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return v0
.end method

.method getWindowInsets(Z)Landroid/view/WindowInsets;
    .registers 11
    .param p1, "forceConstruct"    # Z

    .prologue
    .line 1585
    iget-object v4, p0, mLastWindowInsets:Landroid/view/WindowInsets;

    if-eqz v4, :cond_6

    if-eqz p1, :cond_76

    .line 1586
    :cond_6
    iget-object v4, p0, mDispatchContentInsets:Landroid/graphics/Rect;

    iget-object v5, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1587
    iget-object v4, p0, mDispatchStableInsets:Landroid/graphics/Rect;

    iget-object v5, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1588
    iget-object v0, p0, mDispatchContentInsets:Landroid/graphics/Rect;

    .line 1589
    .local v0, "contentInsets":Landroid/graphics/Rect;
    iget-object v3, p0, mDispatchStableInsets:Landroid/graphics/Rect;

    .line 1592
    .local v3, "stableInsets":Landroid/graphics/Rect;
    if-nez p1, :cond_32

    iget-object v4, p0, mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-object v4, p0, mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 1595
    :cond_2e
    iget-object v0, p0, mPendingContentInsets:Landroid/graphics/Rect;

    .line 1596
    iget-object v3, p0, mPendingStableInsets:Landroid/graphics/Rect;

    .line 1598
    :cond_32
    iget-object v4, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v4, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    .line 1599
    .local v2, "outsets":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-gtz v4, :cond_46

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-gtz v4, :cond_46

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-gtz v4, :cond_46

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-lez v4, :cond_60

    .line 1600
    :cond_46
    new-instance v1, Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v0    # "contentInsets":Landroid/graphics/Rect;
    .local v1, "contentInsets":Landroid/graphics/Rect;
    move-object v0, v1

    .line 1604
    .end local v1    # "contentInsets":Landroid/graphics/Rect;
    .restart local v0    # "contentInsets":Landroid/graphics/Rect;
    :cond_60
    new-instance v4, Landroid/view/WindowInsets;

    const/4 v5, 0x0

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v6

    invoke-direct {v4, v0, v5, v3, v6}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    iput-object v4, p0, mLastWindowInsets:Landroid/view/WindowInsets;

    .line 1608
    .end local v0    # "contentInsets":Landroid/graphics/Rect;
    .end local v2    # "outsets":Landroid/graphics/Rect;
    .end local v3    # "stableInsets":Landroid/graphics/Rect;
    :cond_76
    iget-object v4, p0, mLastWindowInsets:Landroid/view/WindowInsets;

    return-object v4
.end method

.method handleAppVisibility(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .prologue
    .line 1133
    iget-boolean v0, p0, mAppVisible:Z

    if-eq v0, p1, :cond_1f

    .line 1134
    iput-boolean p1, p0, mAppVisible:Z

    .line 1136
    iget-object v0, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_15

    .line 1138
    iget-boolean v0, p0, mAppVisible:Z

    if-nez v0, :cond_20

    .line 1139
    const/4 v0, 0x1

    iput-boolean v0, p0, mWindowsExitAnimating:Z

    .line 1145
    :cond_15
    :goto_15
    invoke-virtual {p0}, scheduleTraversals()V

    .line 1146
    iget-boolean v0, p0, mAppVisible:Z

    if-nez v0, :cond_1f

    .line 1147
    invoke-static {}, Landroid/view/WindowManagerGlobal;->trimForeground()V

    .line 1150
    :cond_1f
    return-void

    .line 1140
    :cond_20
    iget-boolean v0, p0, mWindowsAnimating:Z

    if-nez v0, :cond_15

    .line 1141
    const/4 v0, 0x0

    iput-boolean v0, p0, mWindowsExitAnimating:Z

    goto :goto_15
.end method

.method public handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V
    .registers 6
    .param p1, "args"    # Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    .prologue
    .line 6520
    iget v1, p0, mSeq:I

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    if-eq v1, v2, :cond_12

    .line 6524
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    iput v1, p0, mSeq:I

    .line 6525
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 6526
    invoke-virtual {p0}, scheduleTraversals()V

    .line 6528
    :cond_12
    iget-object v1, p0, mView:Landroid/view/View;

    if-nez v1, :cond_17

    .line 6538
    :cond_16
    :goto_16
    return-void

    .line 6529
    :cond_17
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    if-eqz v1, :cond_24

    .line 6530
    iget-object v1, p0, mView:Landroid/view/View;

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    iget v3, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    .line 6533
    :cond_24
    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    and-int/lit8 v0, v1, 0x7

    .line 6534
    .local v0, "visibility":I
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    if-eq v0, v1, :cond_16

    .line 6535
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    .line 6536
    iget-object v1, p0, mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    goto :goto_16
.end method

.method public handleDispatchWindowAnimationStarted(I)V
    .registers 4
    .param p1, "remainingFrameCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 6541
    iget-boolean v0, p0, mDrawDuringWindowsAnimating:Z

    if-nez v0, :cond_1a

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1a

    .line 6543
    iget-boolean v0, p0, mAppVisible:Z

    if-nez v0, :cond_16

    iget-object v0, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_16

    .line 6545
    iput-boolean v1, p0, mWindowsExitAnimating:Z

    .line 6548
    :cond_16
    iput p1, p0, mRemainingFrameCount:I

    .line 6549
    iput-boolean v1, p0, mWindowsAnimating:Z

    .line 6551
    :cond_1a
    return-void
.end method

.method public handleDispatchWindowAnimationStopped()V
    .registers 3

    .prologue
    .line 6554
    iget-boolean v0, p0, mWindowsAnimating:Z

    if-eqz v0, :cond_37

    .line 6555
    const/4 v0, 0x0

    iput-boolean v0, p0, mWindowsAnimating:Z

    .line 6557
    iget-boolean v0, p0, mWindowsExitAnimating:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_16

    .line 6559
    invoke-direct {p0}, handleDispatchSurfaceDestroyDeferred()V

    .line 6563
    :cond_16
    iget-object v0, p0, mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean v0, p0, mIsAnimating:Z

    if-nez v0, :cond_34

    iget-boolean v0, p0, mFullRedrawNeeded:Z

    if-nez v0, :cond_34

    iget-object v0, p0, mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_37

    iget v0, p0, mScrollY:I

    iget-object v1, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    if-eq v0, v1, :cond_37

    .line 6564
    :cond_34
    invoke-virtual {p0}, scheduleTraversals()V

    .line 6567
    :cond_37
    return-void
.end method

.method public handleDispatchWindowShown()V
    .registers 2

    .prologue
    .line 6570
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnWindowShown()V

    .line 6571
    return-void
.end method

.method handleGetNewSurface()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 1153
    iput-boolean v0, p0, mNewSurfaceNeeded:Z

    .line 1154
    iput-boolean v0, p0, mFullRedrawNeeded:Z

    .line 1155
    invoke-virtual {p0}, scheduleTraversals()V

    .line 1156
    return-void
.end method

.method invalidate()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1234
    iget-object v0, p0, mDirty:Landroid/graphics/Rect;

    iget v1, p0, mWidth:I

    iget v2, p0, mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1235
    iget-boolean v0, p0, mWillDrawSoon:Z

    if-nez v0, :cond_11

    .line 1236
    invoke-virtual {p0}, scheduleTraversals()V

    .line 1238
    :cond_11
    return-void
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 1252
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 1253
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 7
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1257
    invoke-virtual {p0}, checkThread()V

    .line 1260
    if-nez p2, :cond_b

    .line 1261
    invoke-virtual {p0}, invalidate()V

    .line 1283
    :cond_a
    :goto_a
    return-object v2

    .line 1263
    :cond_b
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, mIsAnimating:Z

    if-eqz v0, :cond_a

    .line 1267
    :cond_15
    iget v0, p0, mCurScrollY:I

    if-nez v0, :cond_1d

    iget-object v0, p0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_41

    .line 1268
    :cond_1d
    iget-object v0, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1269
    iget-object p2, p0, mTempRect:Landroid/graphics/Rect;

    .line 1270
    iget v0, p0, mCurScrollY:I

    if-eqz v0, :cond_2f

    .line 1271
    const/4 v0, 0x0

    iget v1, p0, mCurScrollY:I

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1273
    :cond_2f
    iget-object v0, p0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_38

    .line 1274
    iget-object v0, p0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 1276
    :cond_38
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v0, :cond_41

    .line 1277
    invoke-virtual {p2, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 1281
    :cond_41
    invoke-direct {p0, p2}, invalidateRectOnScreen(Landroid/graphics/Rect;)V

    goto :goto_a
.end method

.method invalidateWorld(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1241
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1242
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1b

    move-object v1, p1

    .line 1243
    check-cast v1, Landroid/view/ViewGroup;

    .line 1244
    .local v1, "parent":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 1245
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, invalidateWorld(Landroid/view/View;)V

    .line 1244
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1248
    .end local v0    # "i":I
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_1b
    return-void
.end method

.method public invokeFunctor(JZ)V
    .registers 5
    .param p1, "functor"    # J
    .param p3, "waitForCompletion"    # Z

    .prologue
    .line 986
    invoke-static {p1, p2, p3}, Landroid/view/ThreadedRenderer;->invokeFunctor(JZ)V

    .line 987
    return-void
.end method

.method isInLayout()Z
    .registers 2

    .prologue
    .line 2607
    iget-boolean v0, p0, mInLayout:Z

    return v0
.end method

.method public isLayoutDirectionResolved()Z
    .registers 2

    .prologue
    .line 8061
    const/4 v0, 0x1

    return v0
.end method

.method public isLayoutRequested()Z
    .registers 2

    .prologue
    .line 1230
    iget-boolean v0, p0, mLayoutRequested:Z

    return v0
.end method

.method public isTextAlignmentResolved()Z
    .registers 2

    .prologue
    .line 8091
    const/4 v0, 0x1

    return v0
.end method

.method public isTextDirectionResolved()Z
    .registers 2

    .prologue
    .line 8076
    const/4 v0, 0x1

    return v0
.end method

.method public loadSystemProperties()V
    .registers 3

    .prologue
    .line 6935
    iget-object v0, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$4;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$4;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 6959
    return-void
.end method

.method notifyRendererOfFramePending()V
    .registers 2

    .prologue
    .line 1400
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_d

    .line 1401
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->notifyFramePending()V

    .line 1403
    :cond_d
    return-void
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I

    .prologue
    .line 8051
    invoke-direct {p0, p2, p3}, postSendWindowContentChangedCallback(Landroid/view/View;I)V

    .line 8052
    return-void
.end method

.method public onHardwarePostDraw(Landroid/view/DisplayListCanvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .prologue
    .line 2847
    iget-object v0, p0, mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_18

    .line 2848
    iget-object v0, p0, mResizePaint:Landroid/graphics/Paint;

    iget v1, p0, mResizeAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2849
    iget-object v0, p0, mResizeBuffer:Landroid/view/HardwareLayer;

    iget v1, p0, mHardwareXOffset:I

    int-to-float v1, v1

    iget v2, p0, mHardwareYOffset:I

    int-to-float v2, v2

    iget-object v3, p0, mResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/DisplayListCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V

    .line 2852
    :cond_18
    invoke-direct {p0, p1}, drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V

    .line 2853
    return-void
.end method

.method public onHardwarePreDraw(Landroid/view/DisplayListCanvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .prologue
    .line 2842
    iget v0, p0, mHardwareXOffset:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, mHardwareYOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/DisplayListCanvas;->translate(FF)V

    .line 2843
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 8189
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 8194
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 8199
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 8185
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 8181
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 8176
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 8167
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 2
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 8172
    return-void
.end method

.method outputDisplayList(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2859
    iget-object v0, p1, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->output()V

    .line 2860
    return-void
.end method

.method public performHapticFeedback(IZ)Z
    .registers 6
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    .prologue
    .line 6763
    :try_start_0
    iget-object v1, p0, mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(Landroid/view/IWindow;IZ)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 6765
    :goto_8
    return v1

    .line 6764
    :catch_9
    move-exception v0

    .line 6765
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public playSoundEffect(I)V
    .registers 7
    .param p1, "effectId"    # I

    .prologue
    .line 6725
    invoke-virtual {p0}, checkThread()V

    .line 6728
    :try_start_3
    invoke-direct {p0}, getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 6730
    .local v0, "audioManager":Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_6a

    .line 6747
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown effect id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not defined in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/view/SoundEffectConstants;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_34
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_34} :catch_34

    .line 6750
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :catch_34
    move-exception v1

    .line 6752
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "ViewRootImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FATAL EXCEPTION when attempting to play sound effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6753
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 6755
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_50
    return-void

    .line 6732
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :pswitch_51
    const/4 v2, 0x0

    :try_start_52
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_50

    .line 6735
    :pswitch_56
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_50

    .line 6738
    :pswitch_5b
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_50

    .line 6741
    :pswitch_60
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_50

    .line 6744
    :pswitch_65
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_69
    .catch Ljava/lang/IllegalStateException; {:try_start_52 .. :try_end_69} :catch_34

    goto :goto_50

    .line 6730
    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_51
        :pswitch_5b
        :pswitch_65
        :pswitch_60
        :pswitch_56
    .end packed-switch
.end method

.method pokeDrawLockIfNeeded()V
    .registers 4

    .prologue
    .line 1198
    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v1, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 1199
    .local v0, "displayState":I
    iget-object v1, p0, mView:Landroid/view/View;

    if-eqz v1, :cond_1d

    iget-boolean v1, p0, mAdded:Z

    if-eqz v1, :cond_1d

    iget-boolean v1, p0, mTraversalScheduled:Z

    if-eqz v1, :cond_1d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    .line 1203
    :cond_16
    :try_start_16
    iget-object v1, p0, mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->pokeDrawLock(Landroid/os/IBinder;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_1e

    .line 1208
    :cond_1d
    :goto_1d
    return-void

    .line 1204
    :catch_1e
    move-exception v1

    goto :goto_1d
.end method

.method public profile()V
    .registers 2

    .prologue
    .line 646
    const/4 v0, 0x1

    iput-boolean v0, p0, mProfile:Z

    .line 647
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3702
    invoke-virtual {p0}, checkThread()V

    .line 3703
    iget-object v0, p0, mView:Landroid/view/View;

    if-ne v0, p1, :cond_13

    .line 3704
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 3705
    iget-boolean v0, p0, mWillDrawSoon:Z

    if-nez v0, :cond_13

    .line 3706
    invoke-virtual {p0}, scheduleTraversals()V

    .line 3709
    :cond_13
    return-void
.end method

.method public registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .registers 4
    .param p1, "animator"    # Landroid/view/RenderNode;

    .prologue
    .line 990
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_e

    .line 991
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    .line 998
    :goto_d
    return-void

    .line 993
    :cond_e
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-nez v0, :cond_1d

    .line 994
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 996
    :cond_1d
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 3660
    invoke-virtual {p0}, checkThread()V

    .line 3661
    invoke-virtual {p0}, scheduleTraversals()V

    .line 3662
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 8146
    invoke-virtual {p0, p2, p3}, scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v0

    .line 8147
    .local v0, "scrolled":Z
    if-eqz p2, :cond_2a

    .line 8148
    iget-object v1, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8149
    iget-object v1, p0, mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget v3, p0, mCurScrollY:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 8150
    iget-object v1, p0, mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget-object v3, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mWindowTop:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 8152
    :try_start_21
    iget-object v1, p0, mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v3, p0, mTempRect:Landroid/graphics/Rect;

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowSession;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2a} :catch_2b

    .line 8157
    :cond_2a
    :goto_2a
    return v0

    .line 8153
    :catch_2b
    move-exception v1

    goto :goto_2a
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 8142
    return-void
.end method

.method public requestFitSystemWindows()V
    .registers 2

    .prologue
    .line 1212
    invoke-virtual {p0}, checkThread()V

    .line 1213
    const/4 v0, 0x1

    iput-boolean v0, p0, mApplyInsetsRequested:Z

    .line 1214
    invoke-virtual {p0}, scheduleTraversals()V

    .line 1215
    return-void
.end method

.method public requestLayout()V
    .registers 3

    .prologue
    .line 1219
    iget-boolean v0, p0, mHandlingLayoutInLayoutRequest:Z

    if-nez v0, :cond_e

    .line 1220
    invoke-virtual {p0}, checkThread()V

    .line 1221
    const/4 v0, 0x1

    iput-boolean v0, p0, mLayoutRequested:Z

    .line 1222
    invoke-virtual {p0}, scheduleTraversals()V

    .line 1226
    :goto_d
    return-void

    .line 1224
    :cond_e
    const-string v0, "ViewRootImpl"

    const-string/jumbo v1, "requestLayout is already in process"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method requestLayoutDuringLayout(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 2633
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_9

    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v1, :cond_a

    .line 2648
    :cond_9
    :goto_9
    return v0

    .line 2637
    :cond_a
    iget-object v1, p0, mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 2638
    iget-object v1, p0, mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2640
    :cond_17
    iget-boolean v1, p0, mHandlingLayoutInLayoutRequest:Z

    if-eqz v1, :cond_9

    .line 2647
    const-string v0, "ViewRootImpl"

    const-string/jumbo v1, "requestLayoutDuringLayout is already in process"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public requestOnStylusButtonEvent(Landroid/view/MotionEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 9021
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewTreeObserver;->dispatchOnPenButtonEventListener(Landroid/view/MotionEvent;I)V

    .line 9022
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v9, 0x0

    .line 7911
    iget-object v8, p0, mView:Landroid/view/View;

    if-eqz v8, :cond_d

    iget-boolean v8, p0, mStopped:Z

    if-nez v8, :cond_d

    iget-boolean v8, p0, mPausedForTransition:Z

    if-eqz v8, :cond_f

    .line 7912
    :cond_d
    const/4 v8, 0x0

    .line 7958
    :goto_e
    return v8

    .line 7916
    :cond_f
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    .line 7917
    .local v1, "eventType":I
    sparse-switch v1, :sswitch_data_68

    .line 7957
    :cond_16
    :goto_16
    iget-object v8, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v8, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7958
    const/4 v8, 0x1

    goto :goto_e

    .line 7919
    :sswitch_1d
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    .line 7920
    .local v6, "sourceNodeId":J
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    .line 7922
    .local v0, "accessibilityViewId":I
    iget-object v8, p0, mView:Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v4

    .line 7923
    .local v4, "source":Landroid/view/View;
    if-eqz v4, :cond_16

    .line 7924
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 7925
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_16

    .line 7926
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v5

    .line 7929
    .local v5, "virtualNodeId":I
    const v8, 0x7fffffff

    if-ne v5, v8, :cond_45

    .line 7930
    const/4 v8, -0x1

    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 7935
    .local v2, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_41
    invoke-virtual {p0, v4, v2}, setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_16

    .line 7933
    .end local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_45
    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .restart local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_41

    .line 7940
    .end local v0    # "accessibilityViewId":I
    .end local v2    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v4    # "source":Landroid/view/View;
    .end local v5    # "virtualNodeId":I
    .end local v6    # "sourceNodeId":J
    :sswitch_4a
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    .line 7941
    .restart local v6    # "sourceNodeId":J
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    .line 7943
    .restart local v0    # "accessibilityViewId":I
    iget-object v8, p0, mView:Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v4

    .line 7944
    .restart local v4    # "source":Landroid/view/View;
    if-eqz v4, :cond_16

    .line 7945
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 7946
    .restart local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v3, :cond_16

    .line 7947
    invoke-virtual {p0, v9, v9}, setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_16

    .line 7954
    .end local v0    # "accessibilityViewId":I
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v4    # "source":Landroid/view/View;
    .end local v6    # "sourceNodeId":J
    :sswitch_64
    invoke-direct {p0, p2}, handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_16

    .line 7917
    :sswitch_data_68
    .sparse-switch
        0x800 -> :sswitch_64
        0x8000 -> :sswitch_1d
        0x10000 -> :sswitch_4a
    .end sparse-switch
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .registers 3
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .prologue
    .line 1386
    iget-object v0, p0, mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1387
    :cond_c
    iget-object v0, p0, mPendingTransitions:Ljava/util/ArrayList;

    if-nez v0, :cond_17

    .line 1388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPendingTransitions:Ljava/util/ArrayList;

    .line 1390
    :cond_17
    iget-object v0, p0, mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    :cond_1c
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2791
    invoke-virtual {p0}, checkThread()V

    .line 2792
    iget-object v0, p0, mView:Landroid/view/View;

    if-ne v0, p1, :cond_18

    .line 2793
    iget-object v0, p0, mView:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2796
    const/4 v0, 0x1

    iput-boolean v0, p0, mWindowAttributesChanged:Z

    .line 2797
    const/4 v0, 0x0

    iput v0, p0, mWindowAttributesChangesFlag:I

    .line 2798
    invoke-virtual {p0}, requestLayout()V

    .line 2800
    :cond_18
    return-void
.end method

.method public requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 6930
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6931
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6932
    return-void
.end method

.method scheduleConsumeBatchedInput()V
    .registers 5

    .prologue
    .line 7359
    iget-boolean v0, p0, mConsumeBatchedInputScheduled:Z

    if-nez v0, :cond_10

    .line 7360
    const/4 v0, 0x1

    iput-boolean v0, p0, mConsumeBatchedInputScheduled:Z

    .line 7361
    iget-object v0, p0, mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    iget-object v2, p0, mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 7364
    :cond_10
    return-void
.end method

.method scheduleConsumeBatchedInputImmediately()V
    .registers 3

    .prologue
    .line 7375
    iget-boolean v0, p0, mConsumeBatchedInputImmediatelyScheduled:Z

    if-nez v0, :cond_11

    .line 7376
    invoke-virtual {p0}, unscheduleConsumeBatchedInput()V

    .line 7377
    const/4 v0, 0x1

    iput-boolean v0, p0, mConsumeBatchedInputImmediatelyScheduled:Z

    .line 7378
    iget-object v0, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 7380
    :cond_11
    return-void
.end method

.method scheduleTraversals()V
    .registers 5

    .prologue
    .line 1406
    iget-boolean v0, p0, mTraversalScheduled:Z

    if-nez v0, :cond_2d

    .line 1407
    const/4 v0, 0x1

    iput-boolean v0, p0, mTraversalScheduled:Z

    .line 1408
    iget-object v0, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MessageQueue;->postSyncBarrier()I

    move-result v0

    iput v0, p0, mTraversalBarrier:I

    .line 1409
    iget-object v0, p0, mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1411
    iget-boolean v0, p0, mUnbufferedInputDispatch:Z

    if-nez v0, :cond_27

    .line 1412
    invoke-virtual {p0}, scheduleConsumeBatchedInput()V

    .line 1414
    :cond_27
    invoke-virtual {p0}, notifyRendererOfFramePending()V

    .line 1415
    invoke-virtual {p0}, pokeDrawLockIfNeeded()V

    .line 1417
    :cond_2d
    return-void
.end method

.method scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .registers 14
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 3446
    iget-object v7, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v7, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 3447
    .local v0, "ci":Landroid/graphics/Rect;
    iget-object v7, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v7, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 3448
    .local v6, "vi":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 3449
    .local v5, "scrollY":I
    const/4 v3, 0x0

    .line 3451
    .local v3, "handled":Z
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    if-gt v7, v10, :cond_24

    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    if-gt v7, v10, :cond_24

    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->right:I

    if-gt v7, v10, :cond_24

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    if-le v7, v10, :cond_56

    .line 3457
    :cond_24
    iget v5, p0, mScrollY:I

    .line 3464
    iget-object v7, p0, mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 3468
    .local v2, "focus":Landroid/view/View;
    iget-object v7, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v7, v7, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-nez v7, :cond_3a

    .line 3469
    if-eqz v2, :cond_3a

    instance-of v7, v2, Landroid/widget/EditText;

    if-eqz v7, :cond_3a

    move v7, v8

    .line 3580
    .end local v2    # "focus":Landroid/view/View;
    :goto_39
    return v7

    .line 3476
    .restart local v2    # "focus":Landroid/view/View;
    :cond_3a
    if-nez v2, :cond_3e

    move v7, v8

    .line 3477
    goto :goto_39

    .line 3479
    :cond_3e
    iget-object v7, p0, mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_91

    iget-object v7, p0, mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    move-object v4, v7

    .line 3480
    .local v4, "lastScrolledFocus":Landroid/view/View;
    :goto_4b
    if-eq v2, v4, :cond_4e

    .line 3484
    const/4 p1, 0x0

    .line 3489
    :cond_4e
    if-ne v2, v4, :cond_93

    iget-boolean v7, p0, mScrollMayChange:Z

    if-nez v7, :cond_93

    if-nez p1, :cond_93

    .line 3562
    .end local v2    # "focus":Landroid/view/View;
    .end local v4    # "lastScrolledFocus":Landroid/view/View;
    :cond_56
    :goto_56
    iget v7, p0, mScrollY:I

    if-eq v5, v7, :cond_8f

    .line 3565
    if-nez p2, :cond_14e

    iget-object v7, p0, mResizeBuffer:Landroid/view/HardwareLayer;

    if-nez v7, :cond_14e

    .line 3566
    iget-object v7, p0, mScroller:Landroid/widget/Scroller;

    if-nez v7, :cond_71

    .line 3567
    new-instance v7, Landroid/widget/Scroller;

    iget-object v9, p0, mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, mScroller:Landroid/widget/Scroller;

    .line 3569
    :cond_71
    iget-object v7, p0, mScroller:Landroid/widget/Scroller;

    iget v9, p0, mScrollY:I

    iget v10, p0, mScrollY:I

    sub-int v10, v5, v10

    invoke-virtual {v7, v8, v9, v8, v10}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 3570
    iget-boolean v7, p0, mSkipPanScrollEnterAnimation:Z

    if-eqz v7, :cond_82

    if-nez v5, :cond_88

    :cond_82
    iget-boolean v7, p0, mSkipPanScrollExitAnimation:Z

    if-eqz v7, :cond_8d

    if-nez v5, :cond_8d

    .line 3572
    :cond_88
    iget-object v7, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3577
    :cond_8d
    :goto_8d
    iput v5, p0, mScrollY:I

    :cond_8f
    move v7, v3

    .line 3580
    goto :goto_39

    .restart local v2    # "focus":Landroid/view/View;
    :cond_91
    move-object v4, v9

    .line 3479
    goto :goto_4b

    .line 3499
    .restart local v4    # "lastScrolledFocus":Landroid/view/View;
    :cond_93
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    .line 3500
    iput-boolean v8, p0, mScrollMayChange:Z

    .line 3503
    const/4 v5, 0x0

    .line 3506
    iget-object v7, p0, mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v7, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 3511
    if-nez p1, :cond_114

    .line 3512
    iget-object v7, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3515
    iget-object v7, p0, mView:Landroid/view/View;

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_bb

    .line 3517
    :try_start_b2
    iget-object v7, p0, mView:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v9, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v9}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    :try_end_bb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b2 .. :try_end_bb} :catch_dc

    .line 3535
    :cond_bb
    :goto_bb
    iget-object v7, p0, mTempRect:Landroid/graphics/Rect;

    iget-object v9, p0, mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 3539
    iget-object v7, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v9, p0, mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    iget v10, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    if-le v7, v9, :cond_11a

    .line 3556
    :cond_d9
    :goto_d9
    const/4 v3, 0x1

    goto/16 :goto_56

    .line 3519
    :catch_dc
    move-exception v1

    .line 3520
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v7, "ViewRootImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "offsetDescendantRectToMyCoords() error occurred. focus="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mTempRect="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_bb

    .line 3529
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_114
    iget-object v7, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_bb

    .line 3545
    :cond_11a
    iget-object v7, p0, mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v5

    iget v9, v6, Landroid/graphics/Rect;->top:I

    if-ge v7, v9, :cond_12d

    .line 3546
    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v5

    sub-int/2addr v7, v9

    sub-int/2addr v5, v7

    goto :goto_d9

    .line 3549
    :cond_12d
    iget-object v7, p0, mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v5

    iget-object v9, p0, mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    if-le v7, v9, :cond_d9

    .line 3551
    iget-object v7, p0, mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v5

    iget-object v9, p0, mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    sub-int/2addr v7, v9

    add-int/2addr v5, v7

    goto :goto_d9

    .line 3574
    .end local v2    # "focus":Landroid/view/View;
    .end local v4    # "lastScrolledFocus":Landroid/view/View;
    :cond_14e
    iget-object v7, p0, mScroller:Landroid/widget/Scroller;

    if-eqz v7, :cond_8d

    .line 3575
    iget-object v7, p0, mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_8d
.end method

.method setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v6, 0x0

    .line 3611
    iget-object v4, p0, mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v4, :cond_30

    .line 3613
    iget-object v1, p0, mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3614
    .local v1, "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v0, p0, mAccessibilityFocusedHost:Landroid/view/View;

    .line 3621
    .local v0, "focusHost":Landroid/view/View;
    iput-object v6, p0, mAccessibilityFocusedHost:Landroid/view/View;

    .line 3622
    iput-object v6, p0, mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3626
    invoke-virtual {v0}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    .line 3628
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    .line 3629
    .local v2, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v2, :cond_2d

    .line 3631
    iget-object v4, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 3632
    iget-object v4, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 3634
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    .line 3636
    .local v3, "virtualNodeId":I
    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 3639
    .end local v3    # "virtualNodeId":I
    :cond_2d
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 3641
    .end local v0    # "focusHost":Landroid/view/View;
    .end local v1    # "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_30
    iget-object v4, p0, mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v4, :cond_39

    .line 3643
    iget-object v4, p0, mAccessibilityFocusedHost:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks()V

    .line 3647
    :cond_39
    iput-object p1, p0, mAccessibilityFocusedHost:Landroid/view/View;

    .line 3648
    iput-object p2, p0, mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3650
    iget-object v4, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_4a

    .line 3651
    iget-object v4, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->invalidateRoot()V

    .line 3653
    :cond_4a
    return-void
.end method

.method public setCurrentWritingBuddyView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 8941
    iput-object p1, p0, mCurrentWritingBuddyView:Landroid/view/View;

    .line 8942
    return-void
.end method

.method public setDragFocus(Landroid/view/View;)V
    .registers 3
    .param p1, "newDragTarget"    # Landroid/view/View;

    .prologue
    .line 6637
    iget-object v0, p0, mCurrentDragView:Landroid/view/View;

    if-eq v0, p1, :cond_6

    .line 6638
    iput-object p1, p0, mCurrentDragView:Landroid/view/View;

    .line 6640
    :cond_6
    return-void
.end method

.method public setDrawDuringWindowsAnimating(Z)V
    .registers 2
    .param p1, "value"    # Z

    .prologue
    .line 3439
    iput-boolean p1, p0, mDrawDuringWindowsAnimating:Z

    .line 3440
    if-eqz p1, :cond_7

    .line 3441
    invoke-virtual {p0}, handleDispatchWindowAnimationStopped()V

    .line 3443
    :cond_7
    return-void
.end method

.method public setForcePerformDraw(Z)V
    .registers 5
    .param p1, "forceDraw"    # Z

    .prologue
    .line 9109
    const-string v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setForcePerformDraw():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9110
    iput-boolean p1, p0, mForceDraw:Z

    .line 9111
    return-void
.end method

.method setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .registers 13
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "newView"    # Z

    .prologue
    .line 1077
    monitor-enter p0

    .line 1078
    :try_start_1
    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->left:I

    .line 1079
    .local v3, "oldInsetLeft":I
    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->top:I

    .line 1080
    .local v5, "oldInsetTop":I
    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->right:I

    .line 1081
    .local v4, "oldInsetRight":I
    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 1082
    .local v2, "oldInsetBottom":I
    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1083
    .local v6, "oldSoftInputMode":I
    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v1, v7, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 1086
    .local v1, "oldHasManualSurfaceInsets":Z
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v7, p0, mClientWindowLayoutFlags:I

    .line 1089
    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v7, 0x80

    .line 1093
    .local v0, "compatibleWindowFlag":I
    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 1094
    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1096
    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v7

    iput v7, p0, mWindowAttributesChangesFlag:I

    .line 1097
    iget v7, p0, mWindowAttributesChangesFlag:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    if-eqz v7, :cond_4b

    .line 1100
    iget-object v7, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1102
    :cond_4b
    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v7, :cond_57

    .line 1103
    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, p0, mBasePackageName:Ljava/lang/String;

    iput-object v8, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1105
    :cond_57
    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v8, v0

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1108
    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v7, v3, v5, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1110
    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput-boolean v1, v7, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 1112
    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v7}, applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 1114
    if-eqz p2, :cond_77

    .line 1115
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v7, p0, mSoftInputMode:I

    .line 1116
    invoke-virtual {p0}, requestLayout()V

    .line 1120
    :cond_77
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v7, v7, 0xf0

    if-nez v7, :cond_8a

    .line 1122
    iget-object v7, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v8, v8, -0xf1

    and-int/lit16 v9, v6, 0xf0

    or-int/2addr v8, v9

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1127
    :cond_8a
    const/4 v7, 0x1

    iput-boolean v7, p0, mWindowAttributesChanged:Z

    .line 1128
    invoke-virtual {p0}, scheduleTraversals()V

    .line 1129
    monitor-exit p0

    .line 1130
    return-void

    .line 1129
    .end local v0    # "compatibleWindowFlag":I
    .end local v1    # "oldHasManualSurfaceInsets":Z
    .end local v2    # "oldInsetBottom":I
    .end local v3    # "oldInsetLeft":I
    .end local v4    # "oldInsetRight":I
    .end local v5    # "oldInsetTop":I
    .end local v6    # "oldSoftInputMode":I
    :catchall_92
    move-exception v7

    monitor-exit p0
    :try_end_94
    .catchall {:try_start_1 .. :try_end_94} :catchall_92

    throw v7
.end method

.method setLocalDragState(Ljava/lang/Object;)V
    .registers 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 6380
    iput-object p1, p0, mLocalDragState:Ljava/lang/Object;

    .line 6381
    return-void
.end method

.method public setMultiWindowScale(FF)V
    .registers 7
    .param p1, "hScale"    # F
    .param p2, "vScale"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 8981
    iget-object v1, p0, mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_f

    iget-object v1, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-eqz v1, :cond_f

    .line 9004
    :cond_e
    :goto_e
    return-void

    .line 8985
    :cond_f
    iget-object v1, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x834

    if-eq v1, v2, :cond_e

    iget-object v1, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x836

    if-eq v1, v2, :cond_e

    .line 8990
    iget-object v1, p0, mScaleFactor:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_2f

    iget-object v1, p0, mScaleFactor:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_e

    .line 8993
    :cond_2f
    invoke-virtual {p0}, getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 8994
    .local v0, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_42

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 8996
    :cond_42
    iget-object v1, p0, mScaleFactor:Landroid/graphics/PointF;

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 8997
    iget-object v1, p0, mScaleFactor:Landroid/graphics/PointF;

    iput v3, v1, Landroid/graphics/PointF;->y:F

    goto :goto_e

    .line 9000
    :cond_4b
    const/4 v1, 0x1

    iput-boolean v1, p0, mNewScaleFactorNeeded:Z

    .line 9001
    iget-object v1, p0, mScaleFactor:Landroid/graphics/PointF;

    iput p1, v1, Landroid/graphics/PointF;->x:F

    .line 9002
    iget-object v1, p0, mScaleFactor:Landroid/graphics/PointF;

    iput p2, v1, Landroid/graphics/PointF;->y:F

    goto :goto_e
.end method

.method public setPausedForTransition(Z)V
    .registers 2
    .param p1, "paused"    # Z

    .prologue
    .line 1324
    iput-boolean p1, p0, mPausedForTransition:Z

    .line 1325
    return-void
.end method

.method public setReportNextDraw()V
    .registers 2

    .prologue
    .line 8211
    const/4 v0, 0x1

    iput-boolean v0, p0, mReportNextDraw:Z

    .line 8212
    invoke-virtual {p0}, invalidate()V

    .line 8213
    return-void
.end method

.method public setSkipPanScrollAnimation(ZZ)V
    .registers 3
    .param p1, "bSkipEnter"    # Z
    .param p2, "bSkipExit"    # Z

    .prologue
    .line 3590
    iput-boolean p1, p0, mSkipPanScrollEnterAnimation:Z

    .line 3591
    iput-boolean p2, p0, mSkipPanScrollExitAnimation:Z

    .line 3592
    return-void
.end method

.method public setTransparentRegion(Landroid/graphics/Region;)V
    .registers 4
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 9012
    :try_start_0
    iget-object v0, p0, mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 9015
    :goto_7
    return-void

    .line 9013
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public setUseGestureDetectorEx(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 9032
    sput-boolean p1, mUseGestureDetectorTouchEventEx:Z

    .line 9033
    return-void
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .registers 31
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "panelParentView"    # Landroid/view/View;

    .prologue
    .line 691
    monitor-enter p0

    .line 692
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, mView:Landroid/view/View;

    if-nez v4, :cond_62f

    .line 693
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mView:Landroid/view/View;

    .line 694
    const-string v4, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#1 mView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_36d

    .line 697
    :try_start_27
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mBasePackageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v21

    .line 698
    .local v21, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v21

    iget-boolean v4, v0, Landroid/content/pm/PackageInfo;->isDBQEnabledforSv:Z

    if-eqz v4, :cond_370

    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/PackageInfo;->bufferCountInfo:I

    :goto_42
    sput v4, sSVBufferCount:I

    .line 699
    sget v4, sBufferCount:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_55

    .line 700
    move-object/from16 v0, v21

    iget-boolean v4, v0, Landroid/content/pm/PackageInfo;->isDBQEnabledforAct:Z

    if-eqz v4, :cond_373

    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/PackageInfo;->bufferCountInfo:I

    :goto_53
    sput v4, sBufferCount:I

    .line 702
    :cond_55
    move-object/from16 v0, v21

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->dtsFactor:D

    sput-wide v4, sDTSFactor:D

    .line 705
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, checkDcs(Landroid/content/pm/PackageInfo;)V

    .line 706
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, checkDss(Landroid/content/pm/PackageInfo;)V

    .line 707
    sget-boolean v4, SAFE_DEBUG:Z

    if-eqz v4, :cond_f3

    .line 708
    const-string v4, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Buffer Count from app info with  ::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, sBufferCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " && "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, sSVBufferCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, mBasePackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from View :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBufferCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " DBQ Enabled ::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-boolean v6, v0, Landroid/content/pm/PackageInfo;->isDBQEnabledforAct:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-boolean v6, v0, Landroid/content/pm/PackageInfo;->isDBQEnabledforSv:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sIsDcsEnabledApp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, sIsDcsEnabledApp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sDcsFormat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, sDcsFormat:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  sDssFactor="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, sDssFactor:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_f3} :catch_376
    .catchall {:try_start_27 .. :try_end_f3} :catchall_36d

    .line 721
    .end local v21    # "pi":Landroid/content/pm/PackageInfo;
    :cond_f3
    :goto_f3
    :try_start_f3
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_385

    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_385

    const/4 v4, 0x1

    :goto_103
    move-object/from16 v0, p0

    iput-boolean v4, v0, mIsThisWindowDontNeedSurfaceBuffer:Z

    .line 725
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsThisWindowDontNeedSurfaceBuffer:Z

    if-eqz v4, :cond_13c

    sget-boolean v4, SAFE_DEBUG:Z

    if-eqz v4, :cond_13c

    .line 726
    const-string v4, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "window="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",  mIsThisWindowDontNeedSurfaceBuffer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, mIsThisWindowDontNeedSurfaceBuffer:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_13c
    move-object/from16 v0, p0

    iget-object v4, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getState()I

    move-result v5

    iput v5, v4, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 731
    move-object/from16 v0, p0

    iget-object v4, v0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iget-object v5, v0, mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    move-object/from16 v0, p0

    iget-object v6, v0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v4, v5, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v4, v0, mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, mViewLayoutDirectionInitial:I

    .line 734
    move-object/from16 v0, p0

    iget-object v4, v0, mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 736
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v4, :cond_189

    .line 737
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v5, v0, mBasePackageName:Ljava/lang/String;

    iput-object v5, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 739
    :cond_189
    move-object/from16 v0, p0

    iget-object v0, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 p2, v0

    .line 741
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, p0

    iput v4, v0, mClientWindowLayoutFlags:I

    .line 743
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 745
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v4, :cond_1ca

    .line 746
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 748
    move-object/from16 v0, p0

    iget-object v4, v0, mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v4, :cond_1ca

    .line 749
    new-instance v4, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 750
    move-object/from16 v0, p0

    iget-object v4, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    .line 756
    :cond_1ca
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    if-nez v4, :cond_1ee

    .line 757
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getZ()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    move/from16 v24, v0

    .line 758
    .local v24, "surfaceInset":I
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move/from16 v0, v24

    move/from16 v1, v24

    move/from16 v2, v24

    move/from16 v3, v24

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 761
    .end local v24    # "surfaceInset":I
    :cond_1ee
    move-object/from16 v0, p0

    iget-object v4, v0, mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v4}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v14

    .line 762
    .local v14, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v14}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 765
    move-object/from16 v0, p0

    iget-object v4, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v4, :cond_20b

    .line 766
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V

    .line 769
    :cond_20b
    const/16 v23, 0x0

    .line 770
    .local v23, "restore":Z
    move-object/from16 v0, p0

    iget-object v4, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_22c

    .line 771
    move-object/from16 v0, p0

    iget-object v4, v0, mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v5, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v4, v5}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 772
    const/16 v23, 0x1

    .line 773
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 774
    move-object/from16 v0, p0

    iget-object v4, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 778
    :cond_22c
    invoke-virtual {v14}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v4

    if-nez v4, :cond_241

    .line 779
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x80

    move-object/from16 v0, p2

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 780
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, mLastInCompatMode:Z

    .line 783
    :cond_241
    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iput v4, v0, mSoftInputMode:I

    .line 784
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, mWindowAttributesChanged:Z

    .line 785
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, mWindowAttributesChangesFlag:I

    .line 786
    move-object/from16 v0, p0

    iget-object v4, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p1

    iput-object v0, v4, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 787
    move-object/from16 v0, p0

    iget-object v5, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_388

    const/4 v4, 0x1

    :goto_266
    iput-boolean v4, v5, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 788
    move-object/from16 v0, p0

    iget-object v5, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v4, :cond_38b

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_274
    iput v4, v5, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 790
    if-eqz p3, :cond_282

    .line 791
    move-object/from16 v0, p0

    iget-object v4, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 794
    :cond_282
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, mAdded:Z

    .line 800
    invoke-virtual/range {p0 .. p0}, requestLayout()V

    .line 801
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_393

    .line 803
    new-instance v4, Landroid/view/InputChannel;

    invoke-direct {v4}, Landroid/view/InputChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, mInputChannel:Landroid/view/InputChannel;
    :try_end_29d
    .catchall {:try_start_f3 .. :try_end_29d} :catchall_36d

    .line 809
    :goto_29d
    :try_start_29d
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    move-object/from16 v0, p0

    iput v4, v0, mOrigWindowType:I

    .line 810
    move-object/from16 v0, p0

    iget-object v4, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 811
    invoke-direct/range {p0 .. p0}, collectViewAttributes()Z

    .line 812
    move-object/from16 v0, p0

    iget-object v4, v0, mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget v6, v0, mSeq:I

    move-object/from16 v0, p0

    iget-object v7, v0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, getHostVisibility()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v10, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v11, v11, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v12, v12, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, mInputChannel:Landroid/view/InputChannel;

    invoke-interface/range {v4 .. v13}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I
    :try_end_2e6
    .catch Landroid/os/RemoteException; {:try_start_29d .. :try_end_2e6} :catch_39c
    .catchall {:try_start_29d .. :try_end_2e6} :catchall_3d6

    move-result v22

    .line 827
    .local v22, "res":I
    if-eqz v23, :cond_2ec

    .line 828
    :try_start_2e9
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 832
    :cond_2ec
    move-object/from16 v0, p0

    iget-object v4, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_2ff

    .line 833
    move-object/from16 v0, p0

    iget-object v4, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v5, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 835
    :cond_2ff
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingOverscanInsets:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 836
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 837
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 838
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingVisibleInsets:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 840
    if-gez v22, :cond_4f9

    .line 841
    move-object/from16 v0, p0

    iget-object v4, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 842
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mAdded:Z

    .line 843
    move-object/from16 v0, p0

    iget-object v4, v0, mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 844
    invoke-virtual/range {p0 .. p0}, unscheduleTraversals()V

    .line 845
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 846
    sparse-switch v22, :sswitch_data_638

    .line 887
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- unknown error code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 939
    .end local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v22    # "res":I
    .end local v23    # "restore":Z
    :catchall_36d
    move-exception v4

    monitor-exit p0
    :try_end_36f
    .catchall {:try_start_2e9 .. :try_end_36f} :catchall_36d

    throw v4

    .line 698
    .restart local v21    # "pi":Landroid/content/pm/PackageInfo;
    :cond_370
    const/4 v4, -0x1

    goto/16 :goto_42

    .line 700
    :cond_373
    const/4 v4, -0x1

    goto/16 :goto_53

    .line 714
    .end local v21    # "pi":Landroid/content/pm/PackageInfo;
    :catch_376
    move-exception v16

    .line 715
    .local v16, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_377
    sget-boolean v4, SAFE_DEBUG:Z

    if-eqz v4, :cond_f3

    .line 716
    const-string v4, "SRIB_DBQ_SRIB_DCS_ViewRootImpl"

    const-string/jumbo v5, "setView: Name not found exception caught"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f3

    .line 721
    .end local v16    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_385
    const/4 v4, 0x0

    goto/16 :goto_103

    .line 787
    .restart local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v23    # "restore":Z
    :cond_388
    const/4 v4, 0x0

    goto/16 :goto_266

    .line 788
    :cond_38b
    move-object/from16 v0, p0

    iget-object v4, v0, mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v4, v4, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    goto/16 :goto_274

    .line 806
    :cond_393
    const-string v4, "ISSUE_DEBUG"

    const-string v5, "INPUT_FEATURE_NO_INPUT_CHANNEL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39a
    .catchall {:try_start_377 .. :try_end_39a} :catchall_36d

    goto/16 :goto_29d

    .line 816
    :catch_39c
    move-exception v16

    .line 817
    .local v16, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    :try_start_39e
    move-object/from16 v0, p0

    iput-boolean v4, v0, mAdded:Z

    .line 818
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mView:Landroid/view/View;

    .line 819
    const-string v4, "ViewRootImpl"

    const-string v5, "#2 mView = null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    move-object/from16 v0, p0

    iget-object v4, v0, mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 821
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mInputChannel:Landroid/view/InputChannel;

    .line 822
    move-object/from16 v0, p0

    iget-object v4, v0, mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 823
    invoke-virtual/range {p0 .. p0}, unscheduleTraversals()V

    .line 824
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 825
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Adding window failed"

    move-object/from16 v0, v16

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3d6
    .catchall {:try_start_39e .. :try_end_3d6} :catchall_3d6

    .line 827
    .end local v16    # "e":Landroid/os/RemoteException;
    :catchall_3d6
    move-exception v4

    if-eqz v23, :cond_3dc

    .line 828
    :try_start_3d9
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_3dc
    throw v4

    .line 849
    .restart local v22    # "res":I
    :sswitch_3dd
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not valid; is your activity running?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 853
    :sswitch_400
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not for an application"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 857
    :sswitch_423
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- app for token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is exiting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 861
    :sswitch_446
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has already been added"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 867
    :sswitch_469
    monitor-exit p0

    .line 940
    .end local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v22    # "res":I
    .end local v23    # "restore":Z
    :goto_46a
    return-void

    .line 869
    .restart local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v22    # "res":I
    .restart local v23    # "restore":Z
    :sswitch_46b
    monitor-exit p0

    goto :goto_46a

    .line 871
    :sswitch_46d
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- another window of this type already exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 875
    :sswitch_490
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- permission denied for this window type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 879
    :sswitch_4b3
    new-instance v4, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- the specified display can not be found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 883
    :sswitch_4d6
    new-instance v4, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- the specified window type is not valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 891
    :cond_4f9
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v4, :cond_50c

    .line 892
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 895
    :cond_50c
    move-object/from16 v0, p0

    iget-object v4, v0, mInputChannel:Landroid/view/InputChannel;

    if-eqz v4, :cond_53f

    .line 896
    move-object/from16 v0, p0

    iget-object v4, v0, mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v4, :cond_52c

    .line 897
    new-instance v4, Landroid/view/InputQueue;

    invoke-direct {v4}, Landroid/view/InputQueue;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, mInputQueue:Landroid/view/InputQueue;

    .line 898
    move-object/from16 v0, p0

    iget-object v4, v0, mInputQueueCallback:Landroid/view/InputQueue$Callback;

    move-object/from16 v0, p0

    iget-object v5, v0, mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v4, v5}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    .line 900
    :cond_52c
    new-instance v4, Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    move-object/from16 v0, p0

    iget-object v5, v0, mInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;-><init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 904
    :cond_53f
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 905
    and-int/lit8 v4, v22, 0x1

    if-eqz v4, :cond_632

    const/4 v4, 0x1

    :goto_54b
    move-object/from16 v0, p0

    iput-boolean v4, v0, mAddedTouchMode:Z

    .line 906
    and-int/lit8 v4, v22, 0x2

    if-eqz v4, :cond_635

    const/4 v4, 0x1

    :goto_554
    move-object/from16 v0, p0

    iput-boolean v4, v0, mAppVisible:Z

    .line 908
    move-object/from16 v0, p0

    iget-object v4, v0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_569

    .line 909
    move-object/from16 v0, p0

    iget-object v4, v0, mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    .line 912
    :cond_569
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_575

    .line 913
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 917
    :cond_575
    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    .line 918
    .local v15, "counterSuffix":Ljava/lang/CharSequence;
    new-instance v4, Landroid/view/ViewRootImpl$SyntheticInputStage;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/view/ViewRootImpl$SyntheticInputStage;-><init>(Landroid/view/ViewRootImpl;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 919
    new-instance v25, Landroid/view/ViewRootImpl$ViewPostImeInputStage;

    move-object/from16 v0, p0

    iget-object v4, v0, mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 920
    .local v25, "viewPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v19, Landroid/view/ViewRootImpl$NativePostImeInputStage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aq:native-post-ime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v4}, Landroid/view/ViewRootImpl$NativePostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 922
    .local v19, "nativePostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v17, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 923
    .local v17, "earlyPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v18, Landroid/view/ViewRootImpl$ImeInputStage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aq:ime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v4}, Landroid/view/ViewRootImpl$ImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 925
    .local v18, "imeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v26, Landroid/view/ViewRootImpl$ViewPreImeInputStage;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/view/ViewRootImpl$ViewPreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 926
    .local v26, "viewPreImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v20, Landroid/view/ViewRootImpl$NativePreImeInputStage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aq:native-pre-ime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v4}, Landroid/view/ViewRootImpl$NativePreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 929
    .local v20, "nativePreImeStage":Landroid/view/ViewRootImpl$InputStage;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 930
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 931
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aq:pending:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    .line 935
    new-instance v4, Landroid/view/ViewRootImpl$CocktailGripDetector;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/view/ViewRootImpl$CocktailGripDetector;-><init>(Landroid/view/ViewRootImpl;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mCocktailGripDetector:Landroid/view/ViewRootImpl$CocktailGripDetector;

    .line 939
    .end local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v15    # "counterSuffix":Ljava/lang/CharSequence;
    .end local v17    # "earlyPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v18    # "imeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v19    # "nativePostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v20    # "nativePreImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v22    # "res":I
    .end local v23    # "restore":Z
    .end local v25    # "viewPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v26    # "viewPreImeStage":Landroid/view/ViewRootImpl$InputStage;
    :cond_62f
    monitor-exit p0
    :try_end_630
    .catchall {:try_start_3d9 .. :try_end_630} :catchall_36d

    goto/16 :goto_46a

    .line 905
    .restart local v14    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v22    # "res":I
    .restart local v23    # "restore":Z
    :cond_632
    const/4 v4, 0x0

    goto/16 :goto_54b

    .line 906
    :cond_635
    const/4 v4, 0x0

    goto/16 :goto_554

    .line 846
    :sswitch_data_638
    .sparse-switch
        -0x64 -> :sswitch_46b
        -0xa -> :sswitch_4d6
        -0x9 -> :sswitch_4b3
        -0x8 -> :sswitch_490
        -0x7 -> :sswitch_46d
        -0x6 -> :sswitch_469
        -0x5 -> :sswitch_446
        -0x4 -> :sswitch_423
        -0x3 -> :sswitch_400
        -0x2 -> :sswitch_3dd
        -0x1 -> :sswitch_3dd
    .end sparse-switch
.end method

.method setWindowStopped(Z)V
    .registers 3
    .param p1, "stopped"    # Z

    .prologue
    .line 1309
    iget-boolean v0, p0, mStopped:Z

    if-eq v0, p1, :cond_d

    .line 1310
    iput-boolean p1, p0, mStopped:Z

    .line 1311
    iget-boolean v0, p0, mStopped:Z

    if-nez v0, :cond_d

    .line 1312
    invoke-virtual {p0}, scheduleTraversals()V

    .line 1315
    :cond_d
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 3
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 7887
    const/4 v0, 0x0

    return v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 7892
    const/4 v0, 0x0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 5
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .prologue
    .line 7898
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthesizeInputEvent(Landroid/view/InputEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 7592
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7593
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7594
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7595
    return-void
.end method

.method transformMatrixToGlobal(Landroid/graphics/Matrix;)V
    .registers 4
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 1571
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v0, v0

    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1572
    return-void
.end method

.method transformMatrixToLocal(Landroid/graphics/Matrix;)V
    .registers 4
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 1581
    iget-object v0, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1582
    return-void
.end method

.method public twProcessTwToolBox(Landroid/view/MotionEvent;I)Z
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I

    .prologue
    const/4 v3, 0x0

    .line 4346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v4

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_c

    move v0, v3

    .line 4362
    :goto_b
    return v0

    .line 4350
    :cond_c
    if-nez p2, :cond_30

    .line 4351
    iget-object v3, p0, mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    if-nez v3, :cond_1b

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/toolbox/TwToolBoxManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    .line 4352
    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v1, v3

    .line 4353
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v2, v3

    .line 4354
    .local v2, "y":I
    iget-object v3, p0, mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxManager;->isContain(II)Z

    move-result v3

    iput-boolean v3, p0, mTwToolBoxTracking:Z

    .line 4362
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_2d
    iget-boolean v0, p0, mTwToolBoxTracking:Z

    goto :goto_b

    .line 4356
    :cond_30
    const/4 v4, 0x1

    if-eq p2, v4, :cond_36

    const/4 v4, 0x3

    if-ne p2, v4, :cond_2d

    .line 4357
    :cond_36
    iget-boolean v0, p0, mTwToolBoxTracking:Z

    .line 4358
    .local v0, "tracking":Z
    iput-boolean v3, p0, mTwToolBoxTracking:Z

    goto :goto_b
.end method

.method public twUpdateToolBox()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4369
    iget-object v2, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "toolbox_onoff"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_10

    :goto_d
    iput-boolean v0, p0, mUseFloatingToolBox:Z

    .line 4372
    return-void

    :cond_10
    move v0, v1

    .line 4369
    goto :goto_d
.end method

.method unscheduleConsumeBatchedInput()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 7367
    iget-boolean v0, p0, mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_f

    .line 7368
    iput-boolean v3, p0, mConsumeBatchedInputScheduled:Z

    .line 7369
    iget-object v0, p0, mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 7372
    :cond_f
    return-void
.end method

.method unscheduleTraversals()V
    .registers 5

    .prologue
    .line 1420
    iget-boolean v0, p0, mTraversalScheduled:Z

    if-eqz v0, :cond_1f

    .line 1421
    const/4 v0, 0x0

    iput-boolean v0, p0, mTraversalScheduled:Z

    .line 1422
    iget-object v0, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget v1, p0, mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 1423
    iget-object v0, p0, mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1426
    :cond_1f
    return-void
.end method

.method updateConfiguration(Landroid/content/res/Configuration;Z)V
    .registers 15
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "force"    # Z

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    .line 3777
    iget-object v8, p0, mDisplayAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v8}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 3778
    .local v0, "ci":Landroid/content/res/CompatibilityInfo;
    sget-object v8, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, v8}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 3779
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 3780
    .end local p1    # "config":Landroid/content/res/Configuration;
    .local v1, "config":Landroid/content/res/Configuration;
    iget v8, p0, mNoncompatDensity:I

    invoke-virtual {v0, v8, v1}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    move-object p1, v1

    .line 3783
    .end local v1    # "config":Landroid/content/res/Configuration;
    .restart local p1    # "config":Landroid/content/res/Configuration;
    :cond_1c
    sget-object v9, sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v9

    .line 3784
    :try_start_1f
    sget-object v8, sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "i":I
    :goto_27
    if-ltz v5, :cond_37

    .line 3785
    sget-object v8, sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentCallbacks;

    invoke-interface {v8, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3784
    add-int/lit8 v5, v5, -0x1

    goto :goto_27

    .line 3787
    :cond_37
    monitor-exit v9
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_c2

    .line 3788
    iget-object v8, p0, mView:Landroid/view/View;

    if-eqz v8, :cond_c1

    .line 3792
    iget-object v8, p0, mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 3795
    iget-object v8, p0, mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v8, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    .line 3796
    .local v3, "diff":I
    and-int/lit16 v8, v3, 0x80

    if-eqz v8, :cond_52

    iput-boolean v10, p0, mOrientationChanged:Z

    .line 3797
    :cond_52
    and-int/lit16 v8, v3, 0x80

    if-eqz v8, :cond_70

    iget-object v8, p0, mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_70

    iget-object v8, p0, mScaleFactor:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    cmpg-float v8, v8, v11

    if-ltz v8, :cond_6e

    iget-object v8, p0, mScaleFactor:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    cmpg-float v8, v8, v11

    if-gez v8, :cond_70

    .line 3800
    :cond_6e
    iput-boolean v10, p0, mNewScaleFactorNeeded:Z

    .line 3804
    :cond_70
    if-nez p2, :cond_7a

    iget-object v8, p0, mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v8, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v8

    if-eqz v8, :cond_c1

    .line 3805
    :cond_7a
    iget-object v8, p0, mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v8}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v7

    .line 3806
    .local v7, "lastLayoutDirection":I
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    .line 3807
    .local v2, "currentLayoutDirection":I
    iget-object v8, p0, mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v8, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3808
    if-eq v7, v2, :cond_95

    iget v8, p0, mViewLayoutDirectionInitial:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_95

    .line 3810
    iget-object v8, p0, mView:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 3812
    :cond_95
    iget-object v8, p0, mView:Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3814
    iget-object v8, p0, mLastConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v8, v10, :cond_c1

    .line 3815
    iget-object v8, p0, mView:Landroid/view/View;

    if-eqz v8, :cond_c1

    iget-object v8, p0, mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v8, v8, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v8, :cond_c1

    .line 3816
    iget-object v8, p0, mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    .line 3817
    .local v4, "focusView":Landroid/view/View;
    if-eqz v4, :cond_c1

    .line 3818
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    .line 3819
    .local v6, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v6, :cond_c1

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v8

    if-nez v8, :cond_c1

    .line 3820
    invoke-virtual {v6, v4}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 3828
    .end local v2    # "currentLayoutDirection":I
    .end local v3    # "diff":I
    .end local v4    # "focusView":Landroid/view/View;
    .end local v6    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v7    # "lastLayoutDirection":I
    :cond_c1
    return-void

    .line 3787
    .end local v5    # "i":I
    :catchall_c2
    move-exception v8

    :try_start_c3
    monitor-exit v9
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    throw v8
.end method

.method public windowFocusChanged(ZZ)V
    .registers 4
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .prologue
    .line 7629
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, windowFocusChanged(ZZZ)V

    .line 7630
    return-void
.end method

.method public windowFocusChanged(ZZZ)V
    .registers 8
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z
    .param p3, "focusedAppChanged"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7634
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 7635
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 7636
    if-eqz p1, :cond_1e

    move v1, v2

    :goto_c
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 7637
    if-eqz p2, :cond_20

    :goto_10
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 7639
    if-eqz p3, :cond_22

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_16
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7641
    iget-object v1, p0, mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7642
    return-void

    :cond_1e
    move v1, v3

    .line 7636
    goto :goto_c

    :cond_20
    move v2, v3

    .line 7637
    goto :goto_10

    .line 7639
    :cond_22
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_16
.end method
