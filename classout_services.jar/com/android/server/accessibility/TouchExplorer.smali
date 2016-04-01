.class Lcom/android/server/accessibility/TouchExplorer;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/TouchExplorer$1;,
        Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;,
        Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;,
        Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;,
        Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;
    }
.end annotation


# static fields
.field private static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final CLICK_LOCATION_ACCESSIBILITY_FOCUS:I = 0x1

.field private static final CLICK_LOCATION_LAST_TOUCH_EXPLORED:I = 0x2

.field private static final CLICK_LOCATION_NONE:I = 0x0

.field private static final DEBUG:Z = false

.field private static final EXIT_GESTURE_DETECTION_TIMEOUT:I = 0x7d0

.field private static final GESTURE_DETECTION_VELOCITY_DIP:I = 0x3e8

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TouchExplorer"

.field private static final MAX_DRAGGING_ANGLE_COS:F = 0.52532196f

.field private static final MAX_POINTER_COUNT:I = 0x20

.field private static final MIN_POINTER_DISTANCE_TO_USE_MIDDLE_LOCATION_DIP:I = 0xc8

.field private static final MIN_PREDICTION_SCORE:F = 2.0f

.field private static final STATE_DELEGATING:I = 0x4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_GESTURE_DETECTING:I = 0x5

.field private static final STATE_TOUCH_EXPLORING:I = 0x1

.field private static final TOUCH_TOLERANCE:I = 0x3


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private final mDetermineUserIntentTimeout:I

.field private final mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

.field private final mDoubleTapSlop:I

.field private final mDoubleTapTimeout:I

.field private mDraggingPointerId:I

.field private final mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

.field private mGestureLibrary:Landroid/gesture/GestureLibrary;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

.field private mLastTouchedWindowId:I

.field private mLongPressingPointerDeltaX:I

.field private mLongPressingPointerDeltaY:I

.field private mLongPressingPointerId:I

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private final mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

.field private mPreviousX:F

.field private mPreviousY:F

.field private final mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

.field private final mScaledGestureDetectionVelocity:I

.field private final mScaledMinPointerDistanceToUseMiddleLocation:I

.field private final mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

.field private final mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

.field private final mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

.field private final mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mTapTimeout:I

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchExplorationInProgress:Z

.field private final mTouchSlop:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    const/4 v4, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v1, 0x1

    iput v1, p0, mCurrentState:I

    .line 174
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    .line 186
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mTempRect:Landroid/graphics/Rect;

    .line 189
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, mTempPoint:Landroid/graphics/Point;

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, mStrokeBuffer:Ljava/util/ArrayList;

    .line 213
    const/4 v1, -0x1

    iput v1, p0, mLongPressingPointerId:I

    .line 234
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 235
    iput-object p2, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 236
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object v1, p0, mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    .line 237
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object v1, p0, mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 238
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    iput v1, p0, mTapTimeout:I

    .line 239
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    iput v1, p0, mDetermineUserIntentTimeout:I

    .line 240
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    iput v1, p0, mDoubleTapTimeout:I

    .line 241
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, mTouchSlop:I

    .line 242
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    iput v1, p0, mDoubleTapSlop:I

    .line 243
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, mHandler:Landroid/os/Handler;

    .line 244
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-direct {v1, p0, v4}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object v1, p0, mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    .line 245
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-direct {v1, p0, v4}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object v1, p0, mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    .line 246
    const v1, 0x1100002

    invoke-static {p1, v1}, Landroid/gesture/GestureLibraries;->fromRawResource(Landroid/content/Context;I)Landroid/gesture/GestureLibrary;

    move-result-object v1

    iput-object v1, p0, mGestureLibrary:Landroid/gesture/GestureLibrary;

    .line 247
    iget-object v1, p0, mGestureLibrary:Landroid/gesture/GestureLibrary;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/gesture/GestureLibrary;->setOrientationStyle(I)V

    .line 248
    iget-object v1, p0, mGestureLibrary:Landroid/gesture/GestureLibrary;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/gesture/GestureLibrary;->setSequenceType(I)V

    .line 249
    iget-object v1, p0, mGestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v1}, Landroid/gesture/GestureLibrary;->load()Z

    .line 250
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object v1, p0, mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    .line 251
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;)V

    iput-object v1, p0, mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    .line 252
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    const/16 v2, 0x400

    iget v3, p0, mDetermineUserIntentTimeout:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;II)V

    iput-object v1, p0, mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    .line 255
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    const/high16 v2, 0x200000

    iget v3, p0, mDetermineUserIntentTimeout:I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/TouchExplorer;II)V

    iput-object v1, p0, mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    .line 258
    new-instance v1, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    invoke-direct {v1, p0, v4}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;-><init>(Lcom/android/server/accessibility/TouchExplorer;Lcom/android/server/accessibility/TouchExplorer$1;)V

    iput-object v1, p0, mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 260
    .local v0, "density":F
    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, mScaledMinPointerDistanceToUseMiddleLocation:I

    .line 262
    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, mScaledGestureDetectionVelocity:I

    .line 263
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 76
    iget-object v0, p0, mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 76
    iget-object v0, p0, mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 76
    iget-object v0, p0, mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 76
    iget-object v0, p0, mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 76
    iget-object v0, p0, mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/accessibility/TouchExplorer;)Landroid/graphics/Point;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 76
    iget-object v0, p0, mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/accessibility/TouchExplorer;Landroid/graphics/Point;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # Landroid/graphics/Point;

    .prologue
    .line 76
    invoke-direct {p0, p1}, computeClickLocation(Landroid/graphics/Point;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;IZ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 76
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/accessibility/TouchExplorer;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, sendAccessibilityEvent(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/accessibility/TouchExplorer;)Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 76
    iget-object v0, p0, mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/accessibility/TouchExplorer;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, mLongPressingPointerId:I

    return p1
.end method

.method static synthetic access$2202(Lcom/android/server/accessibility/TouchExplorer;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, mLongPressingPointerDeltaX:I

    return p1
.end method

.method static synthetic access$2302(Lcom/android/server/accessibility/TouchExplorer;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, mLongPressingPointerDeltaY:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/accessibility/TouchExplorer;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1}, sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/server/accessibility/TouchExplorer;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, mCurrentState:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/accessibility/TouchExplorer;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 76
    iget v0, p0, mDetermineUserIntentTimeout:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/TouchExplorer;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 76
    iget v0, p0, mTapTimeout:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/TouchExplorer;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 76
    iget v0, p0, mTouchSlop:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/TouchExplorer;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 76
    iget v0, p0, mDoubleTapTimeout:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/TouchExplorer;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/TouchExplorer;

    .prologue
    .line 76
    iget v0, p0, mDoubleTapSlop:I

    return v0
.end method

.method private clear(Landroid/view/MotionEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 279
    iget v0, p0, mCurrentState:I

    packed-switch v0, :pswitch_data_62

    .line 299
    :goto_7
    :pswitch_7
    iget-object v0, p0, mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 300
    iget-object v0, p0, mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 301
    iget-object v0, p0, mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 302
    iget-object v0, p0, mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 303
    iget-object v0, p0, mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 304
    iget-object v0, p0, mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 306
    iget-object v0, p0, mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->clear()V

    .line 307
    iget-object v0, p0, mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->clear()V

    .line 309
    iget-object v0, p0, mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->clear()V

    .line 312
    iput v2, p0, mLongPressingPointerId:I

    .line 313
    iput v1, p0, mLongPressingPointerDeltaX:I

    .line 314
    iput v1, p0, mLongPressingPointerDeltaY:I

    .line 315
    const/4 v0, 0x1

    iput v0, p0, mCurrentState:I

    .line 316
    iget-object v0, p0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_46

    .line 317
    iget-object v0, p0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    .line 319
    :cond_46
    iput-boolean v1, p0, mTouchExplorationInProgress:Z

    .line 320
    iget-object v0, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 321
    return-void

    .line 282
    :pswitch_4e
    invoke-direct {p0, p2}, sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto :goto_7

    .line 285
    :pswitch_52
    iput v2, p0, mDraggingPointerId:I

    .line 287
    invoke-direct {p0, p1, p2}, sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    goto :goto_7

    .line 291
    :pswitch_58
    invoke-direct {p0, p1, p2}, sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    goto :goto_7

    .line 295
    :pswitch_5c
    iget-object v0, p0, mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_7

    .line 279
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_52
        :pswitch_7
        :pswitch_58
        :pswitch_5c
    .end packed-switch
.end method

.method private computeClickLocation(Landroid/graphics/Point;)I
    .registers 8
    .param p1, "outLocation"    # Landroid/graphics/Point;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 1279
    iget-object v4, p0, mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v4}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1280
    .local v0, "lastExploreEvent":Landroid/view/MotionEvent;
    if-eqz v0, :cond_52

    .line 1281
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1282
    .local v1, "lastExplorePointerIndex":I
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p1, Landroid/graphics/Point;->x:I

    .line 1283
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p1, Landroid/graphics/Point;->y:I

    .line 1292
    iget-object v4, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->isTopActivityCalenders()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1321
    .end local v1    # "lastExplorePointerIndex":I
    :cond_24
    :goto_24
    return v2

    .line 1304
    .restart local v1    # "lastExplorePointerIndex":I
    :cond_25
    iget-object v4, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v5, p0, mLastTouchedWindowId:I

    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->isLastExploreWindowIsSIPType(I)Z

    move-result v4

    if-nez v4, :cond_24

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_24

    .line 1309
    iget-object v4, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->accessibilityFocusOnlyInActiveWindow()Z

    move-result v4

    if-eqz v4, :cond_48

    iget v4, p0, mLastTouchedWindowId:I

    iget-object v5, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v5

    if-ne v4, v5, :cond_52

    .line 1311
    :cond_48
    iget-object v4, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result v4

    if-eqz v4, :cond_24

    move v2, v3

    .line 1312
    goto :goto_24

    .line 1318
    .end local v1    # "lastExplorePointerIndex":I
    :cond_52
    iget-object v2, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_5c

    move v2, v3

    .line 1319
    goto :goto_24

    .line 1321
    :cond_5c
    const/4 v2, 0x0

    goto :goto_24
.end method

.method private computeInjectionAction(II)I
    .registers 6
    .param p1, "actionMasked"    # I
    .param p2, "pointerIndex"    # I

    .prologue
    const/4 v1, 0x1

    .line 1105
    sparse-switch p1, :sswitch_data_24

    .line 1128
    .end local p1    # "actionMasked":I
    :goto_4
    return p1

    .line 1108
    .restart local p1    # "actionMasked":I
    :sswitch_5
    iget-object v0, p0, mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 1110
    .local v0, "injectedTracker":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v1

    if-nez v1, :cond_f

    .line 1111
    const/4 p1, 0x0

    goto :goto_4

    .line 1113
    :cond_f
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 p1, v1, 0x5

    goto :goto_4

    .line 1118
    .end local v0    # "injectedTracker":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    :sswitch_14
    iget-object v0, p0, mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 1120
    .restart local v0    # "injectedTracker":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    invoke-virtual {v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v2

    if-ne v2, v1, :cond_1e

    move p1, v1

    .line 1121
    goto :goto_4

    .line 1123
    :cond_1e
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 p1, v1, 0x6

    goto :goto_4

    .line 1105
    nop

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_5
        0x5 -> :sswitch_5
        0x6 -> :sswitch_14
    .end sparse-switch
.end method

.method private static getStateSymbolicName(I)Ljava/lang/String;
    .registers 4
    .param p0, "state"    # I

    .prologue
    .line 1331
    packed-switch p0, :pswitch_data_28

    .line 1341
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1333
    :pswitch_1c
    const-string v0, "STATE_TOUCH_EXPLORING"

    .line 1339
    :goto_1e
    return-object v0

    .line 1335
    :pswitch_1f
    const-string v0, "STATE_DRAGGING"

    goto :goto_1e

    .line 1337
    :pswitch_22
    const-string v0, "STATE_DELEGATING"

    goto :goto_1e

    .line 1339
    :pswitch_25
    const-string v0, "STATE_GESTURE_DETECTING"

    goto :goto_1e

    .line 1331
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1f
        :pswitch_3
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method private handleMotionEventGestureDetecting(Landroid/view/MotionEvent;I)V
    .registers 17
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 806
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_e4

    .line 864
    :cond_7
    :goto_7
    return-void

    .line 808
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 809
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 810
    .local v8, "y":F
    iput v7, p0, mPreviousX:F

    .line 811
    iput v8, p0, mPreviousY:F

    .line 812
    iget-object v9, p0, mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v10, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-direct {v10, v7, v8, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 815
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 816
    .restart local v7    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 817
    .restart local v8    # "y":F
    iget v9, p0, mPreviousX:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 818
    .local v1, "dX":F
    iget v9, p0, mPreviousY:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 819
    .local v2, "dY":F
    const/high16 v9, 0x40400000    # 3.0f

    cmpl-float v9, v1, v9

    if-gez v9, :cond_47

    const/high16 v9, 0x40400000    # 3.0f

    cmpl-float v9, v2, v9

    if-ltz v9, :cond_7

    .line 820
    :cond_47
    iput v7, p0, mPreviousX:F

    .line 821
    iput v8, p0, mPreviousY:F

    .line 822
    iget-object v9, p0, mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v10, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-direct {v10, v7, v8, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 826
    .end local v1    # "dX":F
    .end local v2    # "dY":F
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_5a
    iget-object v9, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 828
    const/high16 v9, 0x80000

    invoke-direct {p0, v9}, sendAccessibilityEvent(I)V

    .line 830
    const/high16 v9, 0x200000

    invoke-direct {p0, v9}, sendAccessibilityEvent(I)V

    .line 832
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 833
    .restart local v7    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 834
    .restart local v8    # "y":F
    iget-object v9, p0, mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v10, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-direct {v10, v7, v8, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    new-instance v3, Landroid/gesture/Gesture;

    invoke-direct {v3}, Landroid/gesture/Gesture;-><init>()V

    .line 837
    .local v3, "gesture":Landroid/gesture/Gesture;
    new-instance v9, Landroid/gesture/GestureStroke;

    iget-object v10, p0, mStrokeBuffer:Ljava/util/ArrayList;

    invoke-direct {v9, v10}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v9}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 839
    iget-object v9, p0, mGestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v9, v3}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v6

    .line 840
    .local v6, "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b4

    .line 841
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    .line 842
    .local v0, "bestPrediction":Landroid/gesture/Prediction;
    iget-wide v10, v0, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    cmpl-double v9, v10, v12

    if-ltz v9, :cond_b4

    .line 848
    :try_start_a9
    iget-object v9, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 849
    .local v4, "gestureId":I
    iget-object v9, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z
    :try_end_b4
    .catch Ljava/lang/NumberFormatException; {:try_start_a9 .. :try_end_b4} :catch_c3

    .line 856
    .end local v0    # "bestPrediction":Landroid/gesture/Prediction;
    .end local v4    # "gestureId":I
    :cond_b4
    :goto_b4
    iget-object v9, p0, mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 857
    iget-object v9, p0, mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v9}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 858
    const/4 v9, 0x1

    iput v9, p0, mCurrentState:I

    goto/16 :goto_7

    .line 850
    .restart local v0    # "bestPrediction":Landroid/gesture/Prediction;
    :catch_c3
    move-exception v5

    .line 851
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    const-string v9, "TouchExplorer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Non numeric gesture id:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .line 861
    .end local v0    # "bestPrediction":Landroid/gesture/Prediction;
    .end local v3    # "gesture":Landroid/gesture/Gesture;
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    .end local v6    # "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_df
    invoke-direct/range {p0 .. p2}, clear(Landroid/view/MotionEvent;I)V

    goto/16 :goto_7

    .line 806
    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5a
        :pswitch_23
        :pswitch_df
    .end packed-switch
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 769
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_46

    .line 800
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v2, p2}, sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 803
    :goto_10
    return-void

    .line 771
    :pswitch_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Delegating state can only be reached if there is at least one pointer down!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 777
    :pswitch_19
    iget v0, p0, mLongPressingPointerId:I

    if-ltz v0, :cond_2d

    .line 778
    iget v0, p0, mLongPressingPointerDeltaX:I

    neg-int v0, v0

    iget v1, p0, mLongPressingPointerDeltaY:I

    neg-int v1, v1

    invoke-direct {p0, p1, v0, v1}, offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object p1

    .line 781
    iput v2, p0, mLongPressingPointerId:I

    .line 782
    iput v3, p0, mLongPressingPointerDeltaX:I

    .line 783
    iput v3, p0, mLongPressingPointerDeltaY:I

    .line 787
    :cond_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v2, p2}, sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 790
    iget-object v0, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 791
    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, sendAccessibilityEvent(I)V

    .line 793
    const/4 v0, 0x1

    iput v0, p0, mCurrentState:I

    goto :goto_10

    .line 796
    :pswitch_42
    invoke-direct {p0, p1, p2}, clear(Landroid/view/MotionEvent;I)V

    goto :goto_10

    .line 769
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_11
        :pswitch_19
        :pswitch_9
        :pswitch_42
    .end packed-switch
.end method

.method private handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V
    .registers 21
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 672
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, mDraggingPointerId:I

    shl-int v11, v14, v15

    .line 673
    .local v11, "pointerIdBits":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v14

    packed-switch v14, :pswitch_data_120

    .line 760
    :cond_e
    :goto_e
    :pswitch_e
    return-void

    .line 677
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v14, v0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 678
    const/high16 v14, 0x200000

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, sendAccessibilityEvent(I)V

    .line 679
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, mCurrentState:I

    .line 680
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_e

    .line 685
    :pswitch_2e
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, mCurrentState:I

    .line 686
    move-object/from16 v0, p0

    iget v14, v0, mDraggingPointerId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_44

    .line 687
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 689
    :cond_44
    invoke-direct/range {p0 .. p2}, sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_e

    .line 692
    :pswitch_48
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    packed-switch v14, :pswitch_data_132

    .line 726
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, mCurrentState:I

    .line 728
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 731
    invoke-direct/range {p0 .. p2}, sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_e

    .line 697
    :pswitch_62
    invoke-direct/range {p0 .. p1}, isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_b2

    .line 698
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 699
    .local v8, "firstPtrX":F
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 700
    .local v9, "firstPtrY":F
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    .line 701
    .local v12, "secondPtrX":F
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    .line 703
    .local v13, "secondPtrY":F
    sub-float v4, v8, v12

    .line 704
    .local v4, "deltaX":F
    sub-float v5, v9, v13

    .line 705
    .local v5, "deltaY":F
    float-to-double v14, v4

    float-to-double v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    .line 707
    .local v6, "distance":D
    move-object/from16 v0, p0

    iget v14, v0, mScaledMinPointerDistanceToUseMiddleLocation:I

    int-to-double v14, v14

    cmpl-double v14, v6, v14

    if-lez v14, :cond_a6

    .line 708
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v4, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 712
    :cond_a6
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_e

    .line 717
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v6    # "distance":D
    .end local v8    # "firstPtrX":F
    .end local v9    # "firstPtrY":F
    .end local v12    # "secondPtrX":F
    .end local v13    # "secondPtrY":F
    :cond_b2
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, mCurrentState:I

    .line 719
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 722
    invoke-direct/range {p0 .. p2}, sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_e

    .line 736
    :pswitch_c6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    .line 737
    .local v10, "pointerId":I
    move-object/from16 v0, p0

    iget v14, v0, mDraggingPointerId:I

    if-ne v10, v14, :cond_e

    .line 738
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mDraggingPointerId:I

    .line 740
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_e

    .line 744
    .end local v10    # "pointerId":I
    :pswitch_e7
    move-object/from16 v0, p0

    iget-object v14, v0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 746
    const/high16 v14, 0x200000

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, sendAccessibilityEvent(I)V

    .line 748
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    .line 749
    .restart local v10    # "pointerId":I
    move-object/from16 v0, p0

    iget v14, v0, mDraggingPointerId:I

    if-ne v10, v14, :cond_114

    .line 750
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, mDraggingPointerId:I

    .line 752
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 754
    :cond_114
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, mCurrentState:I

    goto/16 :goto_e

    .line 757
    .end local v10    # "pointerId":I
    :pswitch_11b
    invoke-direct/range {p0 .. p2}, clear(Landroid/view/MotionEvent;I)V

    goto/16 :goto_e

    .line 673
    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e7
        :pswitch_48
        :pswitch_11b
        :pswitch_e
        :pswitch_2e
        :pswitch_c6
    .end packed-switch

    .line 692
    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_e
        :pswitch_62
    .end packed-switch
.end method

.method private handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 22
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 405
    move-object/from16 v0, p0

    iget-object v12, v0, mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    .line 407
    .local v12, "receivedTracker":Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    move-object/from16 v0, p0

    iget-object v13, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v13, v0, mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v13, v0, v1}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->onMotionEvent(Landroid/view/MotionEvent;I)V

    .line 411
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    packed-switch v13, :pswitch_data_340

    .line 663
    :cond_1f
    :goto_1f
    :pswitch_1f
    return-void

    .line 413
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v13, v0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionStart()V

    .line 419
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, handleMotionEventGestureDetecting(Landroid/view/MotionEvent;I)V

    .line 430
    const/high16 v13, 0x100000

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, sendAccessibilityEvent(I)V

    .line 435
    move-object/from16 v0, p0

    iget-object v13, v0, mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 436
    move-object/from16 v0, p0

    iget-object v13, v0, mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 437
    move-object/from16 v0, p0

    iget-object v13, v0, mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 439
    move-object/from16 v0, p0

    iget-object v13, v0, mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v13

    if-eqz v13, :cond_5d

    .line 440
    move-object/from16 v0, p0

    iget-object v13, v0, mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 443
    :cond_5d
    move-object/from16 v0, p0

    iget-object v13, v0, mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v13

    if-eqz v13, :cond_6e

    .line 444
    move-object/from16 v0, p0

    iget-object v13, v0, mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 453
    :cond_6e
    move-object/from16 v0, p0

    iget-object v13, v0, mDoubleTapDetector:Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$DoubleTapDetector;->firstTapDetected()Z

    move-result v13

    if-eqz v13, :cond_84

    .line 455
    move-object/from16 v0, p0

    iget-object v13, v0, mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v13, v0, v1}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->post(Landroid/view/MotionEvent;I)V

    goto :goto_1f

    .line 458
    :cond_84
    move-object/from16 v0, p0

    iget-boolean v13, v0, mTouchExplorationInProgress:Z

    if-nez v13, :cond_1f

    .line 459
    move-object/from16 v0, p0

    iget-object v13, v0, mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v13

    if-nez v13, :cond_a9

    .line 462
    invoke-virtual {v12}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v7

    .line 463
    .local v7, "pointerId":I
    const/4 v13, 0x1

    shl-int v10, v13, v7

    .line 464
    .local v10, "pointerIdBits":I
    move-object/from16 v0, p0

    iget-object v13, v0, mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    const/4 v14, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v13, v0, v14, v10, v1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->post(Landroid/view/MotionEvent;ZII)V

    goto/16 :goto_1f

    .line 468
    .end local v7    # "pointerId":I
    .end local v10    # "pointerIdBits":I
    :cond_a9
    move-object/from16 v0, p0

    iget-object v13, v0, mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_1f

    .line 476
    :pswitch_b4
    move-object/from16 v0, p0

    iget-object v13, v0, mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 477
    move-object/from16 v0, p0

    iget-object v13, v0, mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 478
    move-object/from16 v0, p0

    iget-object v13, v0, mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    goto/16 :goto_1f

    .line 481
    :pswitch_cb
    invoke-virtual {v12}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v7

    .line 482
    .restart local v7    # "pointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 483
    .local v11, "pointerIndex":I
    const/4 v13, 0x1

    shl-int v10, v13, v7

    .line 484
    .restart local v10    # "pointerIdBits":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    packed-switch v13, :pswitch_data_350

    .line 615
    move-object/from16 v0, p0

    iget-object v13, v0, mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v13

    if-eqz v13, :cond_2cb

    .line 618
    move-object/from16 v0, p0

    iget-object v13, v0, mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 619
    move-object/from16 v0, p0

    iget-object v13, v0, mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 620
    move-object/from16 v0, p0

    iget-object v13, v0, mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 629
    :goto_fe
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, mCurrentState:I

    .line 630
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 631
    move-object/from16 v0, p0

    iget-object v13, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_1f

    .line 488
    :pswitch_115
    move-object/from16 v0, p0

    iget-object v13, v0, mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v13

    if-eqz v13, :cond_1da

    .line 493
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, handleMotionEventGestureDetecting(Landroid/view/MotionEvent;I)V

    .line 496
    move-object/from16 v0, p0

    iget-object v13, v0, mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    .line 500
    invoke-virtual {v12, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    sub-float v4, v13, v14

    .line 502
    .local v4, "deltaX":F
    invoke-virtual {v12, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    sub-float v5, v13, v14

    .line 504
    .local v5, "deltaY":F
    float-to-double v14, v4

    float-to-double v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    .line 506
    .local v8, "moveDelta":D
    move-object/from16 v0, p0

    iget v13, v0, mDoubleTapSlop:I

    int-to-double v14, v13

    cmpl-double v13, v8, v14

    if-lez v13, :cond_1f

    .line 510
    move-object/from16 v0, p0

    iget-object v13, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v14, 0x3e8

    invoke-virtual {v13, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 511
    move-object/from16 v0, p0

    iget-object v13, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v13, v7}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v14, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 514
    .local v6, "maxAbsVelocity":F
    move-object/from16 v0, p0

    iget v13, v0, mScaledGestureDetectionVelocity:I

    int-to-float v13, v13

    cmpl-float v13, v6, v13

    if-lez v13, :cond_1b9

    .line 517
    const/4 v13, 0x5

    move-object/from16 v0, p0

    iput v13, v0, mCurrentState:I

    .line 518
    move-object/from16 v0, p0

    iget-object v13, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->clear()V

    .line 519
    move-object/from16 v0, p0

    iget-object v13, v0, mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 520
    move-object/from16 v0, p0

    iget-object v13, v0, mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 521
    move-object/from16 v0, p0

    iget-object v13, v0, mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 522
    move-object/from16 v0, p0

    iget-object v13, v0, mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$ExitGestureDetectionModeDelayed;->post()V

    .line 525
    const/high16 v13, 0x40000

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, sendAccessibilityEvent(I)V

    goto/16 :goto_1f

    .line 530
    :cond_1b9
    move-object/from16 v0, p0

    iget-object v13, v0, mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->forceSendAndRemove()V

    .line 531
    move-object/from16 v0, p0

    iget-object v13, v0, mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 532
    move-object/from16 v0, p0

    iget-object v13, v0, mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 533
    const/4 v13, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v13, v10, v2}, sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_1f

    .line 541
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v6    # "maxAbsVelocity":F
    .end local v8    # "moveDelta":D
    :cond_1da
    move-object/from16 v0, p0

    iget-object v13, v0, mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->isPending()Z
    invoke-static {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->access$500(Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;)Z

    move-result v13

    if-eqz v13, :cond_214

    .line 542
    invoke-virtual {v12, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    sub-float v4, v13, v14

    .line 545
    .restart local v4    # "deltaX":F
    invoke-virtual {v12, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    sub-float v5, v13, v14

    .line 548
    .restart local v5    # "deltaY":F
    float-to-double v14, v4

    float-to-double v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    .line 550
    .restart local v8    # "moveDelta":D
    move-object/from16 v0, p0

    iget v13, v0, mTouchSlop:I

    int-to-double v14, v13

    cmpl-double v13, v8, v14

    if-lez v13, :cond_214

    .line 551
    move-object/from16 v0, p0

    iget-object v13, v0, mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 554
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v8    # "moveDelta":D
    :cond_214
    move-object/from16 v0, p0

    iget-boolean v13, v0, mTouchExplorationInProgress:Z

    if-eqz v13, :cond_1f

    .line 555
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    .line 556
    const/4 v13, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v13, v10, v2}, sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_1f

    .line 564
    :pswitch_22d
    move-object/from16 v0, p0

    iget-object v13, v0, mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v13

    if-eqz v13, :cond_27e

    .line 567
    move-object/from16 v0, p0

    iget-object v13, v0, mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 568
    move-object/from16 v0, p0

    iget-object v13, v0, mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 569
    move-object/from16 v0, p0

    iget-object v13, v0, mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 595
    :cond_24c
    :goto_24c
    move-object/from16 v0, p0

    iget-object v13, v0, mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 597
    invoke-direct/range {p0 .. p1}, isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v13

    if-eqz v13, :cond_2bc

    .line 600
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, mCurrentState:I

    .line 601
    move-object/from16 v0, p0

    iput v7, v0, mDraggingPointerId:I

    .line 602
    invoke-virtual {v12}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedDownEdgeFlags()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 603
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v13, v10, v2}, sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 610
    :goto_275
    move-object/from16 v0, p0

    iget-object v13, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_1f

    .line 571
    :cond_27e
    move-object/from16 v0, p0

    iget-object v13, v0, mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 572
    move-object/from16 v0, p0

    iget-boolean v13, v0, mTouchExplorationInProgress:Z

    if-eqz v13, :cond_24c

    .line 578
    invoke-virtual {v12, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    sub-float v4, v13, v14

    .line 580
    .restart local v4    # "deltaX":F
    invoke-virtual {v12, v7}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    sub-float v5, v13, v14

    .line 582
    .restart local v5    # "deltaY":F
    float-to-double v14, v4

    float-to-double v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    .line 583
    .restart local v8    # "moveDelta":D
    move-object/from16 v0, p0

    iget v13, v0, mDoubleTapSlop:I

    int-to-double v14, v13

    cmpg-double v13, v8, v14

    if-ltz v13, :cond_1f

    .line 588
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto :goto_24c

    .line 607
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v8    # "moveDelta":D
    :cond_2bc
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, mCurrentState:I

    .line 608
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_275

    .line 622
    :cond_2cb
    move-object/from16 v0, p0

    iget-object v13, v0, mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 625
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto/16 :goto_fe

    .line 636
    .end local v7    # "pointerId":I
    .end local v10    # "pointerIdBits":I
    .end local v11    # "pointerIndex":I
    :pswitch_2db
    move-object/from16 v0, p0

    iget-object v13, v0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v13}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 639
    move-object/from16 v0, p0

    iget-object v13, v0, mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 640
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 641
    .restart local v7    # "pointerId":I
    const/4 v13, 0x1

    shl-int v10, v13, v7

    .line 643
    .restart local v10    # "pointerIdBits":I
    move-object/from16 v0, p0

    iget-object v13, v0, mPerformLongPressDelayed:Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 644
    move-object/from16 v0, p0

    iget-object v13, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->clear()V

    .line 646
    move-object/from16 v0, p0

    iget-object v13, v0, mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;

    # invokes: Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static {v13}, Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;->access$400(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v13

    if-eqz v13, :cond_32c

    .line 648
    move-object/from16 v0, p0

    iget-object v13, v0, mSendHoverExitDelayed:Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v13, v0, v10, v1}, Lcom/android/server/accessibility/TouchExplorer$SendHoverExitDelayed;->post(Landroid/view/MotionEvent;II)V

    .line 654
    :goto_319
    move-object/from16 v0, p0

    iget-object v13, v0, mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v13

    if-nez v13, :cond_1f

    .line 655
    move-object/from16 v0, p0

    iget-object v13, v0, mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v13}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    goto/16 :goto_1f

    .line 651
    :cond_32c
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto :goto_319

    .line 660
    .end local v7    # "pointerId":I
    .end local v10    # "pointerIdBits":I
    :pswitch_334
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, clear(Landroid/view/MotionEvent;I)V

    goto/16 :goto_1f

    .line 411
    nop

    :pswitch_data_340
    .packed-switch 0x0
        :pswitch_20
        :pswitch_2db
        :pswitch_cb
        :pswitch_334
        :pswitch_1f
        :pswitch_b4
    .end packed-switch

    .line 484
    :pswitch_data_350
    .packed-switch 0x1
        :pswitch_115
        :pswitch_22d
    .end packed-switch
.end method

.method private isDraggingGesture(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 1261
    iget-object v9, p0, mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    .line 1263
    .local v9, "receivedTracker":Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1264
    .local v4, "firstPtrX":F
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1265
    .local v5, "firstPtrY":F
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 1266
    .local v6, "secondPtrX":F
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 1268
    .local v7, "secondPtrY":F
    invoke-virtual {v9, v8}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v0

    .line 1269
    .local v0, "firstPtrDownX":F
    invoke-virtual {v9, v8}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v1

    .line 1270
    .local v1, "firstPtrDownY":F
    invoke-virtual {v9, v10}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v2

    .line 1271
    .local v2, "secondPtrDownX":F
    invoke-virtual {v9, v10}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v3

    .line 1273
    .local v3, "secondPtrDownY":F
    const v8, 0x3f067b80

    invoke-static/range {v0 .. v8}, Lcom/android/server/accessibility/GestureUtils;->isDraggingGesture(FFFFFFFFF)Z

    move-result v8

    return v8
.end method

.method private offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;
    .registers 26
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    .prologue
    .line 1070
    if-nez p2, :cond_5

    if-nez p3, :cond_5

    .line 1089
    .end local p1    # "event":Landroid/view/MotionEvent;
    :goto_4
    return-object p1

    .line 1073
    .restart local p1    # "event":Landroid/view/MotionEvent;
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, mLongPressingPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v21

    .line 1074
    .local v21, "remappedIndex":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    .line 1075
    .local v20, "pointerCount":I
    invoke-static/range {v20 .. v20}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    .line 1076
    .local v8, "props":[Landroid/view/MotionEvent$PointerProperties;
    invoke-static/range {v20 .. v20}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 1077
    .local v9, "coords":[Landroid/view/MotionEvent$PointerCoords;
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1d
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_52

    .line 1078
    aget-object v2, v8, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 1079
    aget-object v2, v9, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1080
    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_4f

    .line 1081
    aget-object v2, v9, v19

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, p2

    int-to-float v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1082
    aget-object v2, v9, v19

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v0, p3

    int-to-float v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1077
    :cond_4f
    add-int/lit8 v19, v19, 0x1

    goto :goto_1d

    .line 1085
    :cond_52
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sec_touchscreen2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    const/4 v12, 0x1

    .line 1089
    .local v12, "mDisplayId":I
    :goto_68
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v18

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object p1

    goto/16 :goto_4

    .line 1085
    .end local v12    # "mDisplayId":I
    :cond_9a
    const/4 v12, 0x0

    goto :goto_68
.end method

.method private sendAccessibilityEvent(I)V
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 872
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 873
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 874
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 875
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 876
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 877
    sparse-switch p1, :sswitch_data_28

    .line 886
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_1f
    :goto_1f
    return-void

    .line 879
    .restart local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :sswitch_20
    const/4 v2, 0x1

    iput-boolean v2, p0, mTouchExplorationInProgress:Z

    goto :goto_1f

    .line 882
    :sswitch_24
    const/4 v2, 0x0

    iput-boolean v2, p0, mTouchExplorationInProgress:Z

    goto :goto_1f

    .line 877
    :sswitch_data_28
    .sparse-switch
        0x200 -> :sswitch_20
        0x400 -> :sswitch_24
    .end sparse-switch
.end method

.method private sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V
    .registers 8
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I
    .param p3, "targetAccessibilityFocus"    # Z

    .prologue
    const/4 v3, 0x1

    .line 977
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 978
    .local v0, "pointerId":I
    shl-int v1, v3, v0

    .line 979
    .local v1, "pointerIdBits":I
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 980
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, p2}, sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 981
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 982
    invoke-direct {p0, p1, v3, v1, p2}, sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 983
    return-void
.end method

.method private sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .registers 10
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 896
    iget-object v2, p0, mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 899
    .local v2, "injectedPointers":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    const/4 v5, 0x0

    .line 900
    .local v5, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 901
    .local v3, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v3, :cond_22

    .line 902
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 904
    .local v4, "pointerId":I
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 905
    const/4 v6, 0x1

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    .line 906
    const/4 v6, 0x0

    invoke-direct {p0, v6, v1}, computeInjectionAction(II)I

    move-result v0

    .line 907
    .local v0, "action":I
    invoke-direct {p0, p1, v0, v5, p2}, sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 901
    .end local v0    # "action":I
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 910
    .end local v4    # "pointerId":I
    :cond_22
    return-void
.end method

.method private sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    .registers 6
    .param p1, "policyFlags"    # I

    .prologue
    const/16 v3, 0xa

    .line 919
    iget-object v2, p0, mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 920
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v3, :cond_24

    .line 921
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    .line 922
    .local v1, "pointerIdBits":I
    iget-object v2, p0, mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v2

    if-nez v2, :cond_21

    .line 923
    iget-object v2, p0, mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 925
    :cond_21
    invoke-direct {p0, v0, v3, v1, p1}, sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 927
    .end local v1    # "pointerIdBits":I
    :cond_24
    return-void
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;III)V
    .registers 27
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I
    .param p3, "pointerIdBits"    # I
    .param p4, "policyFlags"    # I

    .prologue
    .line 995
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 997
    const/16 v19, 0x0

    .line 998
    .local v19, "event":Landroid/view/MotionEvent;
    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_68

    .line 999
    move-object/from16 v19, p1

    .line 1003
    :goto_c
    if-nez p2, :cond_71

    .line 1004
    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 1015
    :goto_17
    move-object/from16 v0, p0

    iget v2, v0, mLongPressingPointerId:I

    if-ltz v2, :cond_2f

    .line 1016
    move-object/from16 v0, p0

    iget v2, v0, mLongPressingPointerDeltaX:I

    neg-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, mLongPressingPointerDeltaY:I

    neg-int v3, v3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2, v3}, offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object v19

    .line 1024
    :cond_2f
    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    new-array v9, v2, [Landroid/view/MotionEvent$PointerCoords;

    .line 1025
    .local v9, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    new-array v8, v2, [Landroid/view/MotionEvent$PointerProperties;

    .line 1026
    .local v8, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_3d
    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_7f

    .line 1027
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v9, v20

    .line 1028
    aget-object v2, v9, v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1029
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v8, v20

    .line 1030
    aget-object v2, v8, v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 1026
    add-int/lit8 v20, v20, 0x1

    goto :goto_3d

    .line 1001
    .end local v8    # "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v9    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v20    # "i":I
    :cond_68
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v19

    goto :goto_c

    .line 1006
    :cond_71
    move-object/from16 v0, p0

    iget-object v2, v0, mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedDownEventTime()J

    move-result-wide v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    goto :goto_17

    .line 1032
    .restart local v8    # "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    .restart local v9    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .restart local v20    # "i":I
    :cond_7f
    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sec_touchscreen2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    const/4 v12, 0x1

    .line 1036
    .local v12, "mDisplayId":I
    :goto_95
    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v13

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v14

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v16

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getFlags()I

    move-result v18

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v21

    .line 1041
    .local v21, "mEvent":Landroid/view/MotionEvent;
    const/high16 v2, 0x40000000    # 2.0f

    or-int p4, p4, v2

    .line 1042
    move-object/from16 v0, p0

    iget-object v2, v0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v2, :cond_df

    .line 1046
    move-object/from16 v0, p0

    iget-object v2, v0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p4

    invoke-interface {v2, v0, v3, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1049
    :cond_df
    move-object/from16 v0, p0

    iget-object v2, v0, mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 1051
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_f1

    .line 1052
    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    .line 1054
    :cond_f1
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_fa

    .line 1055
    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    .line 1057
    :cond_fa
    return-void

    .line 1032
    .end local v12    # "mDisplayId":I
    .end local v21    # "mEvent":Landroid/view/MotionEvent;
    :cond_fb
    const/4 v12, 0x0

    goto :goto_95
.end method

.method private sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V
    .registers 6
    .param p1, "policyFlags"    # I

    .prologue
    .line 936
    iget-object v2, p0, mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 937
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1e

    .line 938
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    .line 939
    .local v1, "pointerIdBits":I
    const/16 v2, 0x200

    invoke-direct {p0, v2}, sendAccessibilityEvent(I)V

    .line 940
    const/16 v2, 0x9

    invoke-direct {p0, v0, v2, v1, p1}, sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 942
    .end local v1    # "pointerIdBits":I
    :cond_1e
    return-void
.end method

.method private sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .registers 11
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v7, 0x1

    .line 952
    iget-object v2, p0, mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    .line 953
    .local v2, "injectedTracked":Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
    const/4 v5, 0x0

    .line 954
    .local v5, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 955
    .local v3, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v3, :cond_23

    .line 956
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 958
    .local v4, "pointerId":I
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_18

    .line 955
    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 961
    :cond_18
    shl-int v6, v7, v4

    or-int/2addr v5, v6

    .line 962
    invoke-direct {p0, v7, v1}, computeInjectionAction(II)I

    move-result v0

    .line 963
    .local v0, "action":I
    invoke-direct {p0, p1, v0, v5, p2}, sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_15

    .line 965
    .end local v0    # "action":I
    .end local v4    # "pointerId":I
    :cond_23
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    .line 268
    iget-object v1, p0, mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 269
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_13

    .line 270
    iget-object v1, p0, mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v1

    const/high16 v2, 0x2000000

    invoke-direct {p0, v1, v2}, clear(Landroid/view/MotionEvent;I)V

    .line 272
    :cond_13
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/16 v2, 0x100

    .line 357
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 361
    .local v0, "eventType":I
    iget-object v1, p0, mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_1a

    if-ne v0, v2, :cond_1a

    .line 363
    iget-object v1, p0, mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 364
    const/16 v1, 0x400

    invoke-direct {p0, v1}, sendAccessibilityEvent(I)V

    .line 369
    :cond_1a
    iget-object v1, p0, mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_2e

    if-ne v0, v2, :cond_2e

    .line 371
    iget-object v1, p0, mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 372
    const/high16 v1, 0x200000

    invoke-direct {p0, v1}, sendAccessibilityEvent(I)V

    .line 377
    :cond_2e
    sparse-switch v0, :sswitch_data_5e

    .line 391
    :goto_31
    iget-object v1, p0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_3a

    .line 392
    iget-object v1, p0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 394
    :cond_3a
    return-void

    .line 380
    :sswitch_3b
    iget-object v1, p0, mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    # getter for: Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$300(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 381
    iget-object v1, p0, mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    # getter for: Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$300(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 382
    iget-object v1, p0, mInjectedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1, v2}, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->access$302(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 384
    :cond_52
    const/4 v1, -0x1

    iput v1, p0, mLastTouchedWindowId:I

    goto :goto_31

    .line 388
    :sswitch_56
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    iput v1, p0, mLastTouchedWindowId:I

    goto :goto_31

    .line 377
    nop

    :sswitch_data_5e
    .sparse-switch
        0x20 -> :sswitch_3b
        0x80 -> :sswitch_56
        0x100 -> :sswitch_56
        0x8000 -> :sswitch_3b
    .end sparse-switch
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 276
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 336
    iget-object v0, p0, mReceivedPointerTracker:Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 338
    iget v0, p0, mCurrentState:I

    packed-switch v0, :pswitch_data_36

    .line 352
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :pswitch_25
    invoke-direct {p0, p1, p2, p3}, handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 354
    :goto_28
    return-void

    .line 343
    :pswitch_29
    invoke-direct {p0, p1, p3}, handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V

    goto :goto_28

    .line 346
    :pswitch_2d
    invoke-direct {p0, p1, p3}, handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V

    goto :goto_28

    .line 349
    :pswitch_31
    invoke-direct {p0, p2, p3}, handleMotionEventGestureDetecting(Landroid/view/MotionEvent;I)V

    goto :goto_28

    .line 338
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_25
        :pswitch_29
        :pswitch_a
        :pswitch_2d
        :pswitch_31
    .end packed-switch
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .registers 2
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 325
    iput-object p1, p0, mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 326
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1605
    const-string v0, "TouchExplorer"

    return-object v0
.end method
